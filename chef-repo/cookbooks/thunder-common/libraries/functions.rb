# @author: Geo Varghese
# @create_date: 28-Apr-2015
# @modified by: Geo Varghese    
# @modified_date: 28-Apr-2015
# @linking to other page: 
# @description: The common functions


# function to print tag of result to help parsing
#
# tag_name    The tag name needs to be displayed
#
def showResultTag(tag_name)
  print "==#{tag_name}=="
end


# function to print sub tag of result to help parsing
#
# tag_name    The tag name needs to be displayed
#
def showResultSubTag(tag_name)
  print "@@#{tag_name}@@"
end

# function to execute command and return output
#
# command       The command to be executed
#
# @return   output of command / false
def executeCmdAndGetOutput(command)
  puts "Command executed:::: #{command} ::::\n"
  cmd = Mixlib::ShellOut.new(command)
  cmd.run_command
  Chef::Log.debug "Command executed: #{command}"
  Chef::Log.debug "Command output: #{cmd.stdout}"
  begin
    cmd.error!
    return cmd.stdout.strip
  rescue
    return false
  end
   
end