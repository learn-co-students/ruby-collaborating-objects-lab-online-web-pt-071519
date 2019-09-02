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
    new_artist = file.split(" - ")[0]
    new_song = file.split(" - ")[1]
    song = Song.new(new_song)
    song.artist = Artist.find_or_create_by_name(new_artist)
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end