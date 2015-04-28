# #######
# BASIC BANK ACCOUNT RUBY
# #######
# Just a basic bank acount application I 
# created to practice Classes 
##############################################

class BankAccount 

attr_accessor :name

  def initialize(name)
    @name = name
    @transactions = []
  end 

def add_transaction(description, amount)
  @transactions.push(description: description, amount: amount)
end

def balance
  balance = 0
  @transactions.each do |transaction|
    balance += transaction[:amount]
  end
  puts balance #just added this to make sure it works
end

def print_register
  puts "#{name}'s Bank Account"
  puts " Description\tAmount"
  @transactions.each do |transaction|
    puts transaction[:description]+"\t"+transaction[:amount].to_s
  end
end


end
############################################

bank_account = BankAccount.new("Jason")
bank_account.add_transaction("Groceries", 49)
bank_account.add_transaction("Movies", 97)
bank_account.balance
bank_account.print_register

