require "pry"
class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name= name
        @@all << self
    end

    def self.all
        @@all
    end


    def self.new_by_filename(filename)
        data = filename.split(" - ")
        song = Song.new(data[1])
        song.artist= Artist.find_or_create_by_name(data[0])
        song
    end

    def artist_name=(artist_name)
        @artist = Artist.find_or_create_by_name(artist_name)
    end

end