require 'pry'
class Artist #has many songs
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

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.find(name)
    #class method detects instances from @@all class variable
    # binding.pry
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)
    name = Artist.new(name)
  end

  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name)
    else
      self.create(artist_name)
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name}
  end
end