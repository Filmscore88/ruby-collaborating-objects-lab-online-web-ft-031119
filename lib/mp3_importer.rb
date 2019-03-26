require 'pry'
class MP3Importer 
attr_accessor :path 

def initialize(path)
@path= path 

end 



def files
new_files=[]
  Dir.new(self.path).each { |file|
  new_files << file if file.length > 4 
  }
  new_files
end 

def import 
 
  self.files.each {|file|
  Song.new_by_filename (file)
  }
end 


end 