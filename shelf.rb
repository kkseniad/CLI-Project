require_relative "movie"

class Shelf
  
  def initialize
    @movies = {}
  end

  def run
    loop do
      puts "\nWelcome to Movie Shelf"

      puts "1. Add a movie."
      puts "2. Update a movie."
      puts "3. Delete a movie."
      puts "4. Display all movies."
      puts "5. Exit"
      print "What would you like to do?"
      choice = gets.chomp.to_i
      puts "\n" 
      
      if choice == 1
        print "What movie do you want to add? "
        name = gets.chomp
        print "What is its rating? "
        rate = gets.chomp
        add_movie(name, rate)
      elsif choice == 2
        print "What movie do you want to update? "
        name = gets.chomp
        update_movie(name, rate)
      elsif choice == 3
        print "What movie do you want to delete? "
        name = gets.chomp
        delete_movie(name)
      when 4
        display_movies
      when 5
        puts "Thank you for using the Movie Shelf. See you later!"
        break
      else
        puts "Invalid input. Please try again."
      end
    end
  end

  def add_movie(name, rate)
    @movies[name] = Movie.new(name,rate)
    puts "Movie added successfully!"
  end

  def update_movie(name)
    if @movies.key?(name)
      print "Enter the new rating: "
      rate = gets.chomp
      @movies[name].rating = rate
      puts "Movie rating updated!"
    else
      puts "Movie not found."
    end   
  end

  def delete_movie(name)
      if @movies.key?(name)
        @movies.delete(name)
        puts "Movie deleted successfully!"
      else
        puts "Movie not found."
      end
  end

  def display_movies
    puts "Movies on your shelf:\n"
    @movies.each_value { |movie| puts movie }
  end

end
