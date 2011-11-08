# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

require 'ruby-debug'

def search_for_quote(params = {})
  if params[:file] != nil and File.exist?params[:file]
    results = []
    File.open(params[:file]) do |file|
      while line = file.gets
        line = line.strip
        if params.length == 1
          results.push line
        end
        if params[:include] != nil and line.include?params[:include] 
          results.push line
        end
        if params[:start_with] != nil and line.start_with?params[:start_with]
          results.push line
        end
        if params[:end_with] != nil and line.end_with?params[:end_with]
          results.push line
        end
      end
    end
    results
  else
    []
  end
end
