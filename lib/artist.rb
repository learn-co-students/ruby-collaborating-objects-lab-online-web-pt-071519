require 'pry'
class Artist 
  
  attr_accessor :name, :artist
  
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
    exist = @@all.detect {|artist| artist.name == name}
    if exist 
      exist 
    else 
      artist = Artist.new(name)
      @@all << artist
      artist
    end
  end
  
  def print_songs 
    self.songs.each do |song|
      puts song.name
    end
  end
  
end 