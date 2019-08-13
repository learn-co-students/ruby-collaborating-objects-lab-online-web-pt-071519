class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def artist=(artist)
        @artist = artist
        @artist.add_song(self)
    end
    def self.all
        @@all
    end
    def self.new_by_filename(filename)
        split_file = filename.split(" - ")
        song = self.new(split_file[1])
        song.artist_name = split_file[0]
        song.genre = split_file[2].delete_suffix(".mp3")
        song
    end
    def artist_name=(name)
        @artist = Artist.find_or_create_by_name(name)
        @artist.add_song(self)
    end
end