def calc 									
	print "Please enter first digit: "				
	first_digit = gets.chomp						
	print "Please enter second digit: "
	second_digit = gets.chomp						
	case @response									
		when "+" # add						
			puts "Result is #{first_digit.to_i + second_digit.to_i}."
		when "-" # sub
			puts "Result is #{first_digit.to_i - second_digit.to_i}."
		when "*" # multi
			puts "Result is #{first_digit.to_i * second_digit.to_i}."
		when "/" # div
			puts "Result is #{first_digit.to_i / second_digit.to_i}."

		end
	end

################### Main Execution Bloc
puts "--------"
puts " WELCOME TO RUBY CALCULATOR!"
puts "--------"
while true										
  print "Enter an operator (+) (-) (/) (*) or enter (q) to quit: "
  @response = gets.chomp
    if (@response == "q")  				
      break
    else									
      calc
    end
end
#comment