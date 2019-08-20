class Artist
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self #self refers to the instance we're creating
  end
  
  def self.all
    @@all
  end
  
  def songs
     Song.all.select do |song|
       song.artist == self #self here is the artist we're calling the method on (self is the receiver of the method call)
     end
  end
  
  def add_song(song)
    song.artist = self #self here refers to artist we're calling the method on; it's the receiver of the call to this method; particular instance that we're calling add_song on
  end

  def self.find_or_create_by_name(name)
    if artist = self.find(name) #self here refers to the Artist class
      artist
    else
      self.new(name)
    end
  end
  
  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end

  def print_songs
  end

end