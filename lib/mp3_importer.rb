
class MP3Importer
  attr_accessor :path

  @@files

  def initialize(path)
    @path = path
    @@files << self
  end

  def files

  end

  def import(list_of_filenames)
    list_of_filenames.each {|filename| Song.new_by_filename(filename)}
  end

end
