class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(new_song)
        new_song.artist = self
    end
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @songs << song
    end

    def self.song_count
        Song.all.count
    end
end

