require 'pry'
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
  
  #def self.find(name)
 #    @@all.detect {|artist| artist.name == name}
  #end
  
  
 # def self.create(name)
 #   self.new(name)
 # end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find{|artist| artist.name == name}
    if artist
      artist
    else 
     artist = self.new(name)
     artist
    end
  end
  
  def print_songs 
    self.songs.each do |song|
      puts song.name
    end
  end
  
  def self.clear 
    @@all = []
  end
  
end 