require 'pry'


class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |a|
            if !genre_hash.include?(a)
                genre_hash[a] = 1
            elsif genre_hash.include?(a)
                genre_hash[a] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |a|
            if !artist_hash.include?(a)
                artist_hash[a] = 1
            elsif artist_hash.include?(a)
                artist_hash[a] += 1
            end
        end
        artist_hash
    end

end