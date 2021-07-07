require 'pry'
class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      Artist.new(name)
    end
  end
  
  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end

  def print_songs
    self.songs.collect do |song|
      puts song.name
    end
  end

end