#This is going to be a simple Rock , Paper , Siccors game with conditionals 

# Paper covers a Rock.      (Paper beats a Rock.)
# Scissors cut Paper.       (Scissors beat Paper.)
# A Rock smashes Scissors.  (A Rock beats Scissors.)
# Anything else is a "draw".


system('clear')
puts "------"
puts "Welcome to Ruby Rock|Paper|Scissors!!"
puts "------"
puts "TOOLS OF DESTRUCTION : Rock [r] Paper [p] Scissors[s]"
print "PLAYER 1: Choose your Weapon!(r)(p)(s):  "

p1 = gets.chomp

print "PLAYER 2: Choose your Weapon!(r)(p)(s):  "

p2 = gets.chomp 


result = case [p1, p2]
         when %w[r r], %w[p p], %w[s s]
           0
         when %w[r p], %w[p s], %w[s r]
           1
         when %w[r s], %w[p r], %w[s p]
           -1
         end

puts case result
     when  0
      "OH MAN, it's a Tie"
     when -1
      "FATALITY!!! PLAYER 1 wins"
     when  1
      "FATALITY!!! PLAYER 2 wins"
     end
