require 'minitest/autorun'
require './shelf'

class TestShelf < Minitest::Test
  def setup
    @shelf = Shelf.new
    @movie = Movie.new("Inception", "9")
  end

  def test_display_movies
    assert_output(/Inception: 9/) { @shelf.display }
  end  

end
