require 'pry'

class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def add_song (song)
        song.artist = self
    end 

    def self.all
        @@all 
    end 
    
    def songs 
        Song.all.select do |song| 
            song.artist == self
        end 
    end

    def self.find_or_create_by_name(artist_name)
        @@all.find do |artist| 
            artist == artist_name
            artist
        end ||
        artist = Artist.new(artist_name)
       
    end

    def print_songs
        songs.each{|song| print "#{song.name}\n"}
    end 
end