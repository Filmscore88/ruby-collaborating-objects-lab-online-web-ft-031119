require 'pry'
class Song 
attr_accessor :artist, :name

def initialize(name)
@name=name
end 



def self.new_by_filename(file_name)
  name=file_name.split(" - ")[1]
  artist=file_name.split(" - ")[0]
  song=Song.new(name)
  song.artist=Artist.find_or_create_by_name(artist)
  song
  
end 

end 