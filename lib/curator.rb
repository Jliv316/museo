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
        museum[:id] = @museum.length + 1
        new_museum = Museum.new(museum)
    end
end
