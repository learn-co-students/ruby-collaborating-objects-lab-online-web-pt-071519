require "pry"
class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name= name
        @@all << self
    end

    def self.all
       @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(new_song)
        new_song.artist =self
    end

    def self.find_or_create_by_name(artist_name)
        if  self.find(artist_name)
            self.find(artist_name)
        else
            self.new(artist_name)
        end
    end

    def self.find(artist_name)
        @@all.find { |artist| artist.name == artist_name}
    end

    def print_songs
        Song.all.each do |song| 
            if song.artist == self
                puts song.name
            end
        end
    end
end