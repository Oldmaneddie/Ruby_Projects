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
case choice
when 'add'
  puts "Oh Awesome! New Flicks!? What is it called?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} NICE! has been added with a rating of #{rating}."
  else
    puts "WOAH That movie already exists! Its rating is #{movies[title.to_sym]}."
  end

when 'update'
  end

when 'display'
  end

when 'delete'
  end

else
  puts "Sorry, I didn't understand you."
end