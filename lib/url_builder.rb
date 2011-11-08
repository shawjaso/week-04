

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def url_builder(url,parameters={:results => 10})
  params = []
  parameters.map do |key, value|
    if key != nil and value != nil
      params.push("#{key}=#{value}")
    end
  end

  "#{url}?#{params.join("&")}"
end

