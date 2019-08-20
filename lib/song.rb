class Song
  
  attr_accessor :name, :artist #this is saying that artist belongs to a song
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end