require 'pry'

class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
   def songs 
    Song.all.find_all {|song| song.artist == self}
  end
  
  def add_song(song) 
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name == name}
      artist ? artist : Artist.new(name)
    #binding.pry
  end
  
  def print_songs 
    songs.each {|song| puts song.name}
    #binding.pry
  end
end 