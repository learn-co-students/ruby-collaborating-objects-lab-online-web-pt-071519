class Song 
  
  attr_accessor :name, :artist, :title
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @title = title
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(file)
    #song = self.new(filename)
    #song.title = filename.split(" - ")[1]
    #song
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
    
  end
   
  
  def artist_name=(name)
    #if (self.artist.nil?)
    #  self.artist = Artist.new(name)
    #else
    #  self.artist.name = name
    #end
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
    
  end 

  
end 