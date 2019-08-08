require 'pry'
class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(file) 
    artist_name = file.split(" - ")[0]
    artist = Artist.new(artist_name) 
    name = file.split(" - ")[1]
    song = Song.new(name)
    song.artist = artist
    song.artist.name = artist_name
    song
    #binding.pry
  end

  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    self.artist = artist
    #binding.pry
  end
end