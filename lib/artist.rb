require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)

    song.artist = self
    @songs << song

  end

    def songs
      Song.all.select do |song|
         song.artist == self
       end


  end

  def self.find_or_create_by_name(str_name)
        if answer = @@all.find{ |looking_for| looking_for.name == str_name }
            return answer
        else
          new_artist = self.new(str_name)
          return new_artist
        end

     end


     def print_songs
       Song.all.find do |song|

          if song.artist == self

           puts song.name
         end



     end
     end
  end
