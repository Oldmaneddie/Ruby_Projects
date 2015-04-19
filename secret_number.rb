###############################################################################
##
## Back-End Web Development - Homework #1
##
## Secret Number is a game you will build in two parts.
## The purpose of the game is to have players guess a secret number from 1-10.
##
## Read the instructions below.
## This exercise will test your knowledge of Variables and Conditionals.
##
################################################################################
##
## We're ready to program! To practice our Ruby skills lets create a secret number game.
## In this game players have three tries to guess a secret number between 1 and 10.
##
## Here are some guidelines to building your game:
##
##  Intros
##  - Welcome the player to your game. Let them know who created the game.
##    - Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
##    - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
##    and that they only have 3 tries to do so.
##
##  Functionality:
##   -  Hard code the secret number. Make it a random number between 1 and 10.
##   -  Ask the user for their guess.
##   -  Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
##   -  If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
##   -  Don't forget to let your players know how many guesses they have left. Your game should say something like
##      "You have X many guesses before the game is over enter a another number"
##   -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
##
## Make sure to add helpful comments to your code to document what each section does.
##
## Remember to cast input from the Player into the appropriate data type.
##
################################################################################


################################################################################
#RUBY SECRET NUMBER GAME
#by Edward Park
################################################################################

def line_seperator(character = "-")
  puts character*20
end

Secret_number = 5 #for +1 can be rand(1..10).to_i


def intro
	system('clear')
	line_seperator()
	puts " WELCOME TO RUBY SECRET NUMBER!"
	puts " by Edward Park"
	line_seperator() 
	print "Enter Player Name: "
	user_name = gets.chomp #be aware of scope of this variable & return
	puts "Hi #{ user_name } !!\n\n"
	puts "OK LET'S PLAY!\n\n"
	puts "THE RULES:"
	puts "1. The number is between 1 to 10"
	puts "2. You have 3 tries to guess the SECRET NUMBER\n\n"
	line_seperator()

	 

end

def check_guess
	3.downto(1) do |i|
		
		line_seperator()
		puts "You have #{i} Guesses Left! "
		print"What is your guess?? "
		user_guess = gets.chomp.to_i #don't forget .gets is returned originally as a string
		
		if user_guess == Secret_number
			return $result = 1	
		elsif user_guess < Secret_number
			puts "\tYour Guess is too Low!"
			$result = 0
		elsif user_guess > Secret_number
			puts "\tYour Guess is too high!"
			$result = 0 
		end 
	end
end

def print_result
	line_seperator() 
	if $result == 1
		puts "YOU WIN!!!!! you have guessed that the secret number was #{Secret_number}!"
	elsif $result == 0
		puts %Q{
		┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼
		███▀▀▀██┼███▀▀▀███┼███▀█▄█▀███┼██▀▀▀
		██┼┼┼┼██┼██┼┼┼┼┼██┼██┼┼┼█┼┼┼██┼██┼┼┼
		██┼┼┼▄▄▄┼██▄▄▄▄▄██┼██┼┼┼▀┼┼┼██┼██▀▀▀
		██┼┼┼┼██┼██┼┼┼┼┼██┼██┼┼┼┼┼┼┼██┼██┼┼┼
		███▄▄▄██┼██┼┼┼┼┼██┼██┼┼┼┼┼┼┼██┼██▄▄▄
		┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼
		███▀▀▀███┼▀███┼┼██▀┼██▀▀▀┼██▀▀▀▀██▄┼
		██┼┼┼┼┼██┼┼┼██┼┼██┼┼██┼┼┼┼██┼┼┼┼┼██┼
		██┼┼┼┼┼██┼┼┼██┼┼██┼┼██▀▀▀┼██▄▄▄▄▄▀▀┼
		██┼┼┼┼┼██┼┼┼██┼┼█▀┼┼██┼┼┼┼██┼┼┼┼┼██┼
		███▄▄▄███┼┼┼─▀█▀┼┼─┼██▄▄▄┼██┼┼┼┼┼██▄
		┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼
		}
		puts "Oh Man, GAME OVER dude . The secret number was #{Secret_number}..."
	end
end


############# MAIN PROGRAM CALL
intro()
check_guess()
print_result()


















