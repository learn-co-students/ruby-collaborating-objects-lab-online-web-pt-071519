class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name =name
    @@all << self 
end 
def self.all 
  @@all 
end 

def add_song(song) 
  song.artist = self 
end 

def songs 
  Song.all.select do |song| song.artist == self 
end 
end 
def self.find(name) 
  @@all.find {|artist| artist.name == name} 
end 

def self.find_or_create_by_name(name) 
  if artist = self.find(name) 
    artist 
  else 
    self.new(name) 
  end 
end 

def print_songs 
  songs.each do |song| 
    puts song.name 
  end 
end 
end 