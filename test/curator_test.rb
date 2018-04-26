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

    def test_it_can_add_artists
    end

    def test_it_can_add_museums
        curator.add_museum({name: "MoMA"})
        assert_instance_of Museum, @museum.first
        curator.museums
        curator.museums.count
        curator.museums.first.id
    end

    def test_it_can_add_photographs
    end
end
