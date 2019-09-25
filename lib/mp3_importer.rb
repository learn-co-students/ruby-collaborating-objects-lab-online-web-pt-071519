class MP3Importer

    attr_accessor :path
    def initialize(path)
        @path = path
    end

    def import 
        files.each { |filename| Song.new_by_filename(filename)}
    end

    def files
        Dir.entries(@path).reject {|f| File.directory? f}
    
    end


end