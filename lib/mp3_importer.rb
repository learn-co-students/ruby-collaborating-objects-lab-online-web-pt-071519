require 'pry'
class MP3Importer
    attr_accessor :path, :files
    def initialize(file_path)
        @path = file_path
    end

    def files
        files = []
        Dir.open(path).each do |file|
            if file.end_with?(".mp3")
                files << file
            end
        end
        files
    end

    def import 
        files.each do |file|
            song = Song.new_by_filename(file)
            song
        end
    end
end
