require 'pry'

class MP3Importer 
  
  attr_accessor :path
  
  @@files = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    @@files = Dir.entries(@path).find_all {|file| file.include?(".mp3")}
  end
  
  def import
    @@files.each {|file| Song.new_by_filename(file)}
    #binding.pry
  end
end