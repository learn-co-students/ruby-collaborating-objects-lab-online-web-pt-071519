class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs.push(song)
  end
  
  def self.find_or_create_by_name(artist_name)
    result = self.all.find {|artist| artist.name == artist_name}
    if result
      result
    else
      new_artist = self.new(artist_name)
      new_artist
    end
  end
  
  def print_songs
    @songs.each do |song|
      song.name
    end
  end
  
  def songs
    Song.al.select{|song|self == song.artist}
    
  end  