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

  def add_song(song)
    song.artist = self
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    Artist.new(name) unless self.all.find do |artist| artist.name == name
    end
  end

  def print_songs
    songs.select do |song| puts song.name
    end
  end

end
