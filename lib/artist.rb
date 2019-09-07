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
    song.artist = self #assigning the song being passed in's artist equal to self
    #self here refers to the particular instance that we're calling add_song on; artist we're calling the method on; it's the receiver of the call to this method; 
  end

  def self.find_or_create_by_name(name)
    if artist = self.find(name) #self here refers to the Artist class cause this is a class method
      artist
    else
      self.new(name)
    end
  end
  
  def self.find(name) #find returns the first object
    @@all.find {|artist| artist.name == name}
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end