
class MP3Importer 
  attr_accessor :path , :artist
  
  def initialize(path)
    @path = path 
  end
  
 
   def files 
    @file = Dir.glob("#{@path}/*.mp3").map {|f| f.gsub("#{@path}/", "")}
  end
  
  def import 
    files.each {|file| Song.new_by_filename(file)}
  end
end