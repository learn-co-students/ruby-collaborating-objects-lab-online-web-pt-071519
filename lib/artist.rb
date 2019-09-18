require "pry"
class Artist

    attr_accessor :name

    @@all_artist = []

    def initialize(name)
        @name= name
        @@all_artist << self
    end



    def self.all
       @@all_artist
    end
end