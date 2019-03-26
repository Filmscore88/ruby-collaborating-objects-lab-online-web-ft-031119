require 'pry'
class Artist 

attr_accessor :name 
@@all=[]


def initialize(name)
@name = name
@songs=[]
@@all << self
end 

def self.all 
  @@all
end 

def songs
  @songs 
end 

def save 
  @@all << self 
end 

def add_song(song)
@songs<< song
end 

def self.find_or_create_by_name(artist)
 self.find(artist)? self.find(artist) : self.create(artist)
end 

def self.create(name)
  newArtist= self.new(name)
  newArtist
end 

def self.find(name)
 @@all.detect {|artists| artists.name == name}
 binding.pry
end  


def print_songs
  self.songs.each{|songs| puts songs.name}
end 
  

end 