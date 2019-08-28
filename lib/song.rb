
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

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    song = Song.new(song_title)
    song.artist = filename.split(" - ")[0]
    song
  end

end
