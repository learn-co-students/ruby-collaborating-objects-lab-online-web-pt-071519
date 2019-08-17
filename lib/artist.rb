require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def Artist.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
     self.find(name) ? self.find(name) : self.new(name)
   end

  def print_songs
    puts songs.name
  end

end
