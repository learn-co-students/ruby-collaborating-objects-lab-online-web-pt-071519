class Song
    attr_accessor :name, :artist
    
    @@all = []
    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end
    def save
        @@all << self
    end 

    def self.new_by_filename(file_name)
        name = file_name.split(" - ")[1]
        artist = file_name.split(" - ")[0]
        song = self.new(name)
        song.artist = Artist.find_or_create_by_name(artist)
        song
    end

    def artist_name= (artist_name)
        @artist = Artist.find_or_create_by_name(artist_name)
        @artist
    end
end 