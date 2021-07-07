class Artist 
  
  attr_accessor :name, :songs  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
   # @@all << name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song) 
    song.artist = self 
   
  end 
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end 
  
   def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    binding.pry 
    #added this method in to maybe help out the next method of find_or create by name retreived from the advanced methods lab 
  end 
  
  def self.create_by_name(name)
  artist = self.new(name) 
 # artist.name = name 
  #artist 
end 

def self.find_by_name(name)
 @@all.find{|artist| artist.name == name} 
  #@@all.each do |song|
    #if song.name == name 
     # return song
end 

  def self.find_or_create_by_name(artist_name)
  self.find_by_name(artist_name) || self.create_by_name(artist_name)
   #artist = self.new(artist_name)
    #ar.artist = self
   # binding.pry
    
  end 
  
  def print_songs
    songs.each { |song| puts song.name }
  end 

end 