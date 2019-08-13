class MP3Importer 
  
  attr_accessor :path 
  
  @@all = []
  
  def initialize(file_path)
   
   #@file_path = file_path 
    #@parse_mp3 = parse_mp3
    @path = file_path 
    @@all << self
    self 
  end 
  
  def files
     Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
 #@@all 
   # binding.pry
 # end 
end 
  def import
    #list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
    files.each { |file| Song.new_by_filename(file) }
  end
 # (list_of_filenames)
end 