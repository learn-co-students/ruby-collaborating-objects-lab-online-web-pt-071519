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


    # def self.new_by_filename(filename)
    #     data = filename.split(" - ")
    
    #     song = Song.new(data[0])
    
    # end

end