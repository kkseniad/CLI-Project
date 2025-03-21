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
      
      case choice
      when 1
        add
      when 2
        update
      when 3
        delete
      when 4
        display
      when 5
        puts "Thank you for using the Movie Shelf. See you later!"
        break
      else
        puts "Invalid input. Please try again"
      end
    end
  end

  def add
    print "What movie do you want to add?"
    name = gets.chomp
    print "What is its rating?"
    rate = gets.chomp
    @movies[name] = Movie.new(name,rate)
    puts "Movie added successfully"
  end

  def update
    print "What movie do you want to update?"
    name = gets.chomp
    if @movies.key?(name)
      print "Enter the new rating:"
      rate = gets.chomp
      @movies[name].rating = rate
      puts "Movie raiting updated!"
    else
      puts "Movie not found"
    end
  end

  def delete
    print "What movie do you want to delete?"
      name = gets.chomp
      if @movies.key?(name)
        @movies.delete(name)
        puts "Movie deleted successfully!"
      else
        puts "Movie not found"
      end
  end

  def display
    puts "Movies on your shelf:\n"
    @movies.each do |name, movie|
      puts movie
    end
  end

end
