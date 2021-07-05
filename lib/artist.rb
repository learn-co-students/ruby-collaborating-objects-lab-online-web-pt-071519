class Artist 
  
  
  attr_accessor :name
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self 
    
  end 
  
  def self.all 
    @@all
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    artist = self.find(name)
    if artist
      artist
      
    else 
      self.new(name)
      
    end
  end
    
    
    def self.find(name)
      @@all.find { |artist| artist.name == name}
    end
  
  def print_songs
    songs.each do |song|
      puts song.name
  end 
end
end 