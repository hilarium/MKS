class Bank
	attr_accessor :balance, :bank_name

	def initialize(bank_name, withdraw=0, deposit=0, transfer=0)
		@bank_name = bank_name
		puts "#{@bank_name} bank was just created."
	end

	def open_account(customer_name, balance=0)
		@balance = balance
		puts "#{customer_name.name}, thanks for opening an account at #{@bank_name}!"
	end

	def withdraw(customer_name, amount)
		@balance -= amount
		customer_name.cash += amount
		puts "#{customer_name.name} withdrew $#{amount}. #{customer_name.name} has $#{customer_name.cash}. #{customer_name.name}'s account has $#{@balance}."
	end

	def deposit(customer_name, amount)
		@balance += amount
		customer_name.cash -= amount
		puts "#{customer_name.name} deposited $#{amount}. #{customer_name.name} has $#{customer_name.cash}. #{customer_name.name}'s account has $#{@balance}."
	end

	def transfer(bank_name, amount)
	end

end

class Person
	attr_accessor :name, :cash
	def initialize(name, cash)
		@name = name
		@cash = cash
        puts "Hi, #{@name}. You have $#{@cash}!"
	end
end

chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("Hilary", 500)
friend1 = Person.new ("Melissa", 1000)
chase.open_account(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)
chase.deposit(me, 200)
chase.deposit(friend1, 300)
chase.withdraw(me, 50)
