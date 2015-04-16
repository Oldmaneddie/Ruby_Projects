##very basic Fizzbuzz Ruby Exercise 
#use for basic run and update

print " Enter Number: "
integer = gets.chomp.to_i

def fizzbuzz(bread)
	if bread % 3 == 0 && bread % 5 == 0
		return puts "fizzbuzz"
	 elsif bread % 3 == 0
	 	return puts " fizz"
	 elsif bread % 5 == 0
	 	return puts" buzz"

	end
end

fizzbuzz(integer)







# why if you write the string five into input does it return fizzbuzz
#more syntatic sugar? 