require'pry'
class Artist
    attr_accessor :name, :songs
  
     @@all = []
  
     def initialize(name)
      @name = name
      #@songs= []
      @@all << self
     end
     
     def add_song(song)
      #@@all << song
      song.artist = self
      song
    end
  
     def songs
     Song.find_by_artist(self)
     end
  
     def save
      @@all << self
      self
    end
  
     def self.all
     #@@all << self
     @@all
      #binding.pry
    end
  
     def self.find_or_create_by_name(name)
      self.all.detect {|artist| artist.name == name} || Artist.new(name)
    end
  
     def print_songs
      self.songs.each {|song| puts song.name} 
     end
  end