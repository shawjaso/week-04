# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

require 'ruby-debug'

def find_quote(file_name, line_num=nil)
  if File.exist?(file_name)
    array = []
    File.open(file_name) do |file|
      while line = file.gets
        array.push line.strip
      end
    end
    if line_num == nil or line_num >= array.length
      line_num = rand(array.length - 1)
    end
    array[line_num]
  else
    "Could not find a quote at this time"
  end
end

