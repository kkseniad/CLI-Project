class Movie
  attr_accessor :movie_name, :rating

  def initialize(movie_name, rating)
    @movie_name = movie_name
    @rating = rating
  end

  def to_s
    "#{@movie_name}: #{rating}"
  end 
end
