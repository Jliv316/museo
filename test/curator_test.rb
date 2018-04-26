require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test
    def setup
        @curator = Curator.new
    end

    def test_it_exists
        assert_instance_of Curator, @curator
    end

    def test_its_default_attributes
        assert_equal [], @curator.artists
        assert_equal [], @curator.museums
        assert_equal [], @curator.photographs
    end

    def test_it_can_add_photographs
        info = {name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941}
        @curator.add_photograph(info)
        assert_instance_of Photograph, @curator.photographs.first
        assert_equal 1, @curator.photographs.count
        assert_equal 1, @curator.photographs.first.id
    end

    def test_it_can_add_museums
        @curator.add_museum({name: "MoMA"})
        assert_instance_of Museum, @curator.museums.first
        assert_equal 1, @curator.museums.count
        assert_equal 1, @curator.museums.first.id
    end

    def test_it_can_add_artists
        info = {name: "Ansel Adams", born: 1902, died: 1984, country: "United States"}
        @curator.add_artist(info)
        assert_instance_of Artist, @curator.artists.first
        assert_equal 1, @curator.artists.count
        assert_equal 1, @curator.artists.first.id
    end
end
