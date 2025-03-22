# Movie Shelf CLI
A command line interface app to simulate a movie collection

## User stories

### Basic Operations
- As a user, I want to add movies to my shelf so that I can store them.
- As a user, I want to update movie ratings on my shelf so that I can modify them as needed.
- As a user, I want to delete movies from my shelf so that I can change my collection.
- As a user, I want to view all movies on my shelf so that I can see what I have.
 
### Continuous Operations
- As a user, I want to perform multiple tasks without restarting the application, so that I can effeciently manage my collection.

### Functional requirements
- The shelf must prompt the user what task to perform(add movie, update movie, delete movie, display movies).
- The shelf must prompt the user for name and rating of movie.
- The shelf must handle invalid input gracefully.
- The shelf must display a message if the user tries to perform an operation (update, delete) on a movie that doesn't exist.
- The shelf must allow the user to update a movie's rating only if the movie exists in the collection.
- The shelf must allow the user to perform another task after one completes.
