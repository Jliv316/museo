require './lib/museum'
require './lib/artist'
require './lib/photograph'
require 'pry'

class Curator
    attr_reader :artists,
                :museums,
                :photographs
    def initialize
        @artists = []
        @museums = []
        @photographs = []
    end

    def add_museum(museum)
        museum[:id] = @museums.length + 1
        @museums << Museum.new(museum)
    end

    def add_artist(artist)
        artist[:id] = @artists.length + 1
        @artists << Artist.new(artist)
    end

    def add_photograph(photograph)
        photograph[:id] = @photographs.length + 1
        @photographs << Photograph.new(photograph)
    end

    def find_museum(id)
        museums.find { |museum| museum.id == id }
    end

    def find_artist(id)
        artists.find { |artist| artist.id == id }
    end

    def find_by_museum_by_photograph
    end

    def find_by_artist_by_photograph
    end
end
