def line_seperator(character = "-")#line breaks for user
  puts character*30
end

def ask(question, kind ="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end

def add_contact
  contact = {"name" => "", "phone_numbers" => []}
  contact["name"] = ask("What is your name? ") 
  answer = ""
  while answer != "n"
    answer =ask("do you want to add a phone number?(y/n) ")
    if answer == "y"
      phone = ask("Enter a phone number: ")
      contact["phone_numbers"].push(phone) 
    end
  end
  return contact 
end




def start_contact_list
      contact_list = []
    answer = ""
    while answer != "n"
      contact_list.push(add_contact())
      answer = ask("Add Another ?(y/n) ") 
    end
  return contact_list
end

def print_contact_list(contact_list)
  contact_list.each do |contact|
    puts "Name: #{contact["name"]}"
    if contact["phone_numbers"].size > 0
        contact["phone_numbers"].each do |phone|
          puts "Phone: #{contact["phone_numbers"]}"
        end
    end
    line_seperator()
  end
end

##MAIN EXECUTION BLOC## 

line_seperator()
puts " WElCOME TO RUBY CONTACTS"
line_seperator()
contact_list = start_contact_list()
print_contact_list(contact_list)


