require 'pry'
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # binding.pry
    long_filenames = Dir[@path + "/*"]
    # binding.pry
    long_filenames.collect {|filename| filename.split("/").last}
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end


end