

def ask(question, kind ="string") # creates question method for input
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

# MAIN EXECUTION BLOC ############
contact_list = []


answer = ""
while answer != "n"
  contact_list.push(add_contact())
  answer = ask("Add Another ?(y/n) ") 
end