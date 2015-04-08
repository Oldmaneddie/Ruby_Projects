def line_seperator(character = "-")#line breaks for user
  puts character*10
end

def create_list #creates initial list object
  print "What do you want to name the list? "
  name = gets.chomp
  
  hash = {"name" => name, "items" => Array.new}
  return hash
end

def add_item #individual items added to list "items"
  print "What Item would you Like to Add? "
  items = gets.chomp
  print "Great! Quantity? "
  quantity = gets.chomp.to_i
  
  hash = {"name" => items, "quantity" => quantity}
  return hash
end

def print_list(list) #print the entire list out
  puts "List: #{list['name']}"
  line_seperator()
  list["items"].each do |item|
    puts"Item: " + item["name"]
    puts "quantity: " + item["quantity"].to_s
  line_seperator()
  end
end

### MAIN EXECUTION BLOC
puts "WELCOME TO SHOPPING WITH RUBY!"
line_seperator()

list = create_list()
list["items"].push(add_item()) #adds individual items to main
print_list(list)

puts "ALL SET TO GO!NOW GO SPEND SOME MONEY!"

