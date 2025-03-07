class Artist
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|s| s.artist == self}
    end

    def genres 
        songs.collect {|s| s.genre}
    end

end