require 'pry'
class Song #belongs to an artist

  attr_accessor :artist, :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def artist=(artist)
    @artist = artist
    @artist.songs << self
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    # binding.pry
    song_info = file.split(" - ")
    song = self.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
  
end