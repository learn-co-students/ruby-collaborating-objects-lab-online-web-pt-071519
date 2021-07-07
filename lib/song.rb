require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def self.find_by_artist(art)
     list = Artist.all

      if list.methods.include? :artist
      list.each{ |obj| obj.artist == art }
        x = list.find_all do |wow|
          wow.artist == art
                          end
      else nu = Artist.new(art)
          nu
      end
      x

    # x = all.find_all do |wow|
    #   wow.artist == artist
    # end
    # x

end
#telling me undefined method when run below in the class mehod new_by_filename
def artist_name=(art_name)
  Artist.find_or_create_by_name(art_name).add_song(self)

end

  def self.new_by_filename(file_name)
    parsed_data = file_name.split(" - ")
    artist_nam = parsed_data[0]
    artist_song = parsed_data[1]
    new_song = self.new(artist_song)
    new_song.artist_name=(artist_nam)
    #new_song.artist = artist_nam

    new_song
  end

end
