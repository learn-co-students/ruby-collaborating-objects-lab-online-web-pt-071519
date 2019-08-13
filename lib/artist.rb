require 'pry'

class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select{|song| song.artist == self}
    end
    def add_song(song)
        song.artist = self
    end
    def self.find_or_create_by_name(name)
        artist = @@all.find{|artist| artist.name == name}
        artist ? artist : self.new(name)
    end
    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
end