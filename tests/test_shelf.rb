require 'minitest/autorun'
require './shelf'

class TestShelf < Minitest::Test
  def setup
    @shelf = Shelf.new
    @movie = Movie.new("Spider-Man", "7.5")
  end

  def test_add_movie
    @shelf.add_movie("Spider-Man", "7.5")
    assert_equal "7.5", @shelf.movies["Spider-Man"].rating, "Failed"
  end

  def test_delete_movie
    @shelf.add_movie("Spider-Man", "7.5")
    @shelf.delete_movie("Spider-Man")
    assert_nil @shelf.movies["Spider-Man"], "Failed"
  end

end
