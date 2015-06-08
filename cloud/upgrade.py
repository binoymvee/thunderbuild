# Create your upgrade views and controller logics here.
# @author: Deepthy
# @created_date: 21-Apr-2015

# Including the modules
from django.shortcuts import render, render_to_response
from django.http import HttpResponse, Http404
from cloud.models import *
from django.template import Context
from django.template.loader import get_template
from django.http import HttpResponseRedirect
from django.contrib.auth import logout
from django.template import RequestContext
from requests.api import request
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.core import serializers
from django.utils import decorators
from django.utils.translation import ugettext as _
from logging import Handler
from django.utils import timezone
import json, datetime, random
from django.core.management.base import NoArgsCommand, CommandError
from datetime import date, timedelta, datetime
import logging
from django.core.exceptions import ObjectDoesNotExist
from django.db import connection
from cloud.utils.decorators import checkFeatureAccess
from cloud.controllers.rbac_controller import *
from django.conf import settings
from cloud.views import thunderAlertAdd
import subprocess
import os

@login_required
def updateThunder(request):
    """
        To display the upgrade popup
        params : request - http request object
        return : HttpResponse object
    """

    # Initializing the data variables
    updatedVersions = []
    canRollback = False

    # Fetch the upgrade details from db table
    updateDetails = PatchUpdate.objects.all().order_by('-id')

    # Create the updatedVersions list to be displayed
    for updateVersion in updateDetails:
        updateVersionData = {}
        rollBackStat = False

        # Check whether the version could be rolledback
        if not updateVersion.rollbacked_status and not canRollback and updateVersion.type.__eq__("micro"):
            rollBackStat = True
            canRollback = True

        # Assigns the data
        updateVersionData['version'] = settings.PATCH_COMPRESS_FILE + updateVersion.version + "." + updateVersion.type
        updateVersionData['id'] = updateVersion.id
        updateVersionData['can_rollback'] = rollBackStat
        updatedVersions.append(updateVersionData)

    # Checking the request is ajax or not, if ajax then limiting the result, else getting all
    if request.GET.get('refresh', ''):
        return HttpResponse(json.dumps({'updatedVersions' : updatedVersions, 'status' : True}), content_type = "application/json")

    # Returning the the response to the file
    return render_to_response('upgrade/update.html', {'updatedVersions' : updatedVersions, 'settings': settings}, context_instance = RequestContext(request))

@login_required
def updatePatch(request):
    """
        To display the upgrade popup
        params : request - http request object
        return : HttpResponse object
    """

    # Initialising the response data
    responseData = {}
    status = True
    changedFileList = []
    message = ""

    # Get the file details from request
    uploadedFileDict = request.FILES

    # Set the project path
    projectPath = settings.THUNDER_ABS_PATH

    try:

        # Process the file details
        sourceFile = uploadedFileDict['0']
        data = sourceFile.read()
        fileName = sourceFile.name
    except Exception, e:

        # Returns the responseData
        responseData['status'] = False
        responseData['message'] = "Please select a patch file of .micro / .macro format"
        return HttpResponse(json.dumps(responseData), content_type = "application/json")


    # Get file extension
    fileNameSplit = str(fileName).split('.')
    fileExtensionType = fileNameSplit[len(fileNameSplit) - 1]

    # Validates the patch extension
    if fileExtensionType not in ['micro', 'macro']:
        responseData['status'] = False
        responseData['message'] = "Please check the format of the patch. It should be in either .micro or .macro format."
        return HttpResponse(json.dumps(responseData), content_type = "application/json")

    # Setting the patch version to response data
    responseData['version'] = fileName
    responseData['is_existing'] = False

    # Creates and writes the file content to destination file
    destinationFile = settings.PATCH_UPLOAD_PATH + fileName
    destinationFileHandler = open(destinationFile, "wb+")
    for chunk in sourceFile.chunks():
        destinationFileHandler.write(chunk)

    # Close the file handler
    destinationFileHandler.close()

    # Get the patch version list
    patchVersionList = getPatchVersionList(destinationFile)

    # Check whether the same patch is installed already
    try:

        # Fetch the data from db for the patch, if available
        checkPatchUpdate = PatchUpdate.objects.get(version = patchVersionList['newVersion'], rollbacked_status = False)

        # Sets the response object
        responseData['status'] = False
        responseData['version'] = fileName
        responseData['is_existing'] = True
        responseData['message'] = patchVersionList['newVersion'] + "  has already installed successfully"
        return HttpResponse(json.dumps(responseData), content_type = "application/json")
    except Exception, e:

        # No matching query exists for the patch version
        status = True

    # Calls the installed patch list validating function
    if fileExtensionType.__eq__('micro'):

        # Checks the installed patch list
        if not isPatchVersionInstalled(patchVersionList['oldVersion']):

            # Sets the response object
            responseData['status'] = False
            responseData['version'] = fileName
            responseData['message'] = "Please install the previous patch versions available"
            return HttpResponse(json.dumps(responseData), content_type = "application/json")

    # Execute the patch application command
    try:
        changedFileList = subprocess.check_output("patch -R -u -b -f -p1 < " + destinationFile, shell = True).splitlines()
        message = "Successfully installed version " + patchVersionList['newVersion']
    except subprocess.CalledProcessError as e:

        # Sets error handling
        status = False
        message = patchVersionList['newVersion'] + " version installation failed"
        updateLogMsg = ""
        errorLog = "command '{}' return with error (code {}): {}" . format(e.cmd, e.returncode, e.output)

        print "command '{}' return with error (code {}): {}" . format(e.cmd, e.returncode, e.output)
        updateLogMsg = "Error while installing the patch version : " + patchVersionList['newVersion']
        updateLogMsg = updateLogMsg + "\n" + errorLog

        # Insert error log
        upgradeLog = UpgradeLog.objects.create(version = patchVersionList['newVersion'], log_details = updateLogMsg)

    # If the patch installation is successful
    if status:

        # Get the db dump repo path
        dbPath = settings.DB_PATCH_UPLOAD_PATH
        dbSQL = dbPath + settings.PATCH_COMPRESS_FILE + patchVersionList['newVersion'] + ".sql"

        # Make the db changes if any
        executeDBChanges(dbSQL)

        # create backups
        createPatchFileBackUp(changedFileList, settings.PATCH_COMPRESS_FILE + patchVersionList['newVersion'])

        # to execute the sh file
        shFilePath = settings.PATCH_INSTALL_SH_FILE_PATH + settings.PATCH_COMPRESS_FILE + patchVersionList['newVersion'] + ".sh"
        
        try:
            
            # Executes the sh file
            if os.path.isfile(shFilePath):
                shExecuteResult = subprocess.check_output("sh " + shFilePath, shell = True).splitlines()
        except subprocess.CalledProcessError as e:

            # Sets error handling
            status = False
            message = patchVersionList['newVersion'] + " installation failed"
            updateLogMsg = "command '{}' return with error (code {}): {}" . format(e.cmd, e.returncode, e.output)

            # Insert error log
            upgradeLog = UpgradeLog.objects.create(version = patchVersionList['newVersion'], log_details = updateLogMsg)

        # Insert the updates for patch installation
        patchUpdate = PatchUpdate.objects.create(version = patchVersionList['newVersion'], type = fileExtensionType)

        # parameters for the alert
        params = {'alert_type': 'Patch Installation',
                  'referece_id': patchUpdate.id,
                  'alert_content': 'New patch is successfully installed version : ' + patchVersionList['newVersion'],
                  'alert_status' : 'N'
                  }

        # Add alert for the patch installation
        thunderAlertAdd(params)
        
    # Setting the response data
    responseData['status'] = status
    responseData['message'] = message

    # Delete the uploaded patch file
    if os.path.isfile(destinationFile):
        os.remove(destinationFile)

    # returns the response
    return HttpResponse(json.dumps(responseData), content_type = "application/json")

def executeDBChanges(dbSQL):
    """
        To execute the sql dump file to reflect the db changes for the patch
        params : dbSQL - sql file path and name
        return : status - boolean
    """

    # Sets the status
    status = True
    message = ""

    # Check whether the sql file exists for the patch
    if os.path.isfile(dbSQL):

        # Creates the database cursor
        cursor = connection.cursor()

        try:

            # Read each line of sql and execute it
            sqlFileHandler = open(dbSQL, 'r')
            query = " ".join(sqlFileHandler.readlines())
            cursor.execute(query)
            sqlFileHandler.close()

            # Set the message
            message = "Successfully restored the mysql dump file for the patch"
        except Exception, e:

            # Sets the status
            status = False

            # Set the message
            message = "Error while restoring mysql dump file : ", e

    return [status, message]

def createPatchFileBackUp(changedFileList, patchFile):
    """
        The modified / added file list on patch installation
    """

    # Sets the return initial value
    status = True
    message = ""
    
    # Get the backup repo path
    backUpPath = settings.PATCH_ROLLBACK_PATH + patchFile + "/"

    # Loops through each entry of changedFileList
    if len(changedFileList) > 0:
        for i in range(0, len(changedFileList)):
            resultStr = str(changedFileList[i]).strip()

            # Checks if the string is empty
            if len(resultStr) > 0:

                # Splits the result string to get the file path
                resultStrTemp = resultStr.split(" ")
                modifiedFile = resultStrTemp[2]

                # Get the destination details
                destinationFile = os.path.basename(modifiedFile)
                destinationFilePath = backUpPath + os.path.dirname(modifiedFile)

                try:

                    # Move the backup file of the modified files to the destination folder for the patch
                    subprocess.check_output("mkdir -p " + destinationFilePath, shell = True)
                    subprocess.check_output("mv " + modifiedFile + ".orig " + destinationFilePath + "/" + destinationFile, shell = True)
                    message = "Successfully created the backup for the patch install"
                except subprocess.CalledProcessError as e:

                    # Sets error handling
                    status = False
                    errorLog = "command '{}' return with error (code {}): {}" . format(e.cmd, e.returncode, e.output)
                    message = errorLog

    return [status, message]

def rollBackPatch(request):
    """
        To rollback the requested patch version
        params : request - http request object
        return : HttpResponse object
    """

    # Get the request data
    patchVersionId = request.GET.get("versionId", "")
    responseData = {}
    status = True

    # Get the patch details
    patchDetails = PatchUpdate.objects.get(id = int(patchVersionId))

    # Set the version name
    patchName = settings.PATCH_COMPRESS_FILE + patchDetails.version

    # Get the backup files from the backup repo for the patch
    patchBackUpPath = settings.PATCH_ROLLBACK_PATH + patchName
    
    try:

        # Zip the backup folder, Replace the patch updated files with the backup files
        os.chdir(patchBackUpPath)
        subprocess.check_output("tar -cf " + settings.THUNDER_ABS_PATH + "/" + settings.PATCH_COMPRESS_FILE + ".tar *", shell = True)
        os.chdir(settings.THUNDER_ABS_PATH)
        subprocess.check_output("tar -xf " + settings.PATCH_COMPRESS_FILE + ".tar", shell = True)
        status = True
    except subprocess.CalledProcessError as e:

        # Sets error handling
        status = False
        errorLog = "command '{}' return with error (code {}): {}" . format(e.cmd, e.returncode, e.output)
        print errorLog
        message = patchDetails.version + " rollback failed"

    # Revert the db changes made for the patch installation
    if status:

        # Get the db dump repo path
        dbPath = settings.DB_PATCH_ROLLBACK_PATH
        dbSQL = dbPath + patchName + ".sql"

        # Executes the dump restore for rollback
        executeDBChanges(dbSQL)

        # to execute the sh backup file
        shFilePath = settings.PATCH_ROLLBACK_SH_FILE_PATH + patchName + ".sh"

        try:

            # Executes the sh file
            if os.path.isfile(shFilePath):
                shExecuteResult = subprocess.check_output("sh " + shFilePath, shell = True).splitlines()
        except subprocess.CalledProcessError as e:

            # Sets error handling
            status = False
            message = patchDetails.version + " rollback failed"
            updateLogMsg = "command '{}' return with error (code {}): {}" . format(e.cmd, e.returncode, e.output)

        # Update the  PatchUpdates status for rollback action
        patchDetails.rollbacked_on = datetime.datetime.now()
        patchDetails.rollbacked_status = True
        patchDetails.save()

        # returns the response
        responseData['status'] = status
        message = "Successfully rolled back the patch"

    # Delete the respective backup files on success
    if os.path.isfile(settings.THUNDER_ABS_PATH + "/" + settings.PATCH_COMPRESS_FILE + ".tar"):
        os.remove(settings.THUNDER_ABS_PATH + "/" + settings.PATCH_COMPRESS_FILE + ".tar")

    # returns the response
    responseData['status'] = status
    responseData['message'] = message

    return HttpResponse(json.dumps(responseData), content_type = "application/json")

def isPatchVersionInstalled(version):
    """
        To check whether the previous micro patch versions are successfully installed or not
        params : destinationFile - file path of the patch to be installed
        return : boolean
    """

    # Checks whether the old version from the patch is the one installed currently
    patchUpdateDetails = PatchUpdate.objects.filter(rollbacked_status = False).order_by('-intsalled_on')

    # Checking the version details
    if len(patchUpdateDetails) > 0:
        if str(patchUpdateDetails[0].version).__ne__(version):
            return False

    return True

def getPatchVersionList(destinationFile):
    """
        To get the old and new version of the patch from patch file
        params : destinationFile - file path of the patch to be installed
        return : versionList - list of version
    """

    # Data variable initialisation
    versionList = {}

    # Read the file content and check for the patch version
    patchFileHandler = open(destinationFile, "r")
    patchFileLineList = patchFileHandler.read().splitlines()

    # Get the indexes of the patch versions
    versionIndex = [i for i, s in enumerate(patchFileLineList) if ("-" + settings.PATCH_VERSION_TEXT) in s or ("+" + settings.PATCH_VERSION_TEXT in s)]
    oldVersionLine = patchFileLineList[versionIndex[1]]
    newVersionLine = patchFileLineList[versionIndex[0]]

    # Set the patch versions
    oldVersion = oldVersionLine[oldVersionLine.index("=") + 1:]
    newVersion = newVersionLine[newVersionLine.index("=") + 1:]
    versionList = {'oldVersion' : oldVersion, 'newVersion' : newVersion}

    return versionList