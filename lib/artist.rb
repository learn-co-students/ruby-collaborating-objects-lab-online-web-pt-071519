class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        @songs
    end
    def add_song(song)
        @songs << song
    end
    def self.find_or_create_by_name(name)
        artist = @@all.find{|artist| artist.name == name}
        artist ? artist : self.new(name)
    end
    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
end