## Movie Ruby application that was mimic'd from CodeAcaedemy but I want to play with it more
#and create a more complete program 

movies = {
  terminator: 3,
  avatar: 4,
  the_great_escape: 1,
  the_avengers: 3
}

puts "WELCOME TO MOVIES WITH RUBY!"
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
