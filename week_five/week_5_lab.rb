# bank account -- Week 5
class Account
	attr_reader :name, :balance

	def initalize (name, balance)
		@name = name
		@balance = balance.to_i
		puts "Welcome #{name}!"
	end

	def withdraw (pin_number, amount)
		puts "Please enter your Pin."
		pin_number =gets.chomp.to_i
			if pin_number == pin
				puts "What is the amount you would like to withdraw?"
				amount = gets.chomp.to_i
				@balance = 1000
				if amount < @balance
					puts "Here is $#{amount}. Your new balance is #{@balance - amount}."
				else 
					puts "I'm sorry, you do not have $#{amount} in your account."
				end
			else
				puts "That is incorrect"
			end
		end

		private
		def pin
			@pin = 1234
		end
	end

	checking = Account.new
	checking.withdraw(1111, 100)


#Draft 2

# class Account
# 	def welcome (name)
# 		puts "Welcome #{name}!"
# 	end

# 	def withdraw (pin_number, amount)
# 		puts "Please enter your Pin."
# 		pin_number =gets.chomp.to_i
# 			if pin_number == pin
# 				puts "What is the amount you would like to withdraw?"
# 				amount = gets.chomp.to_i
# 				if amount < 1000
# 					puts "Here is $#{amount}. Your new balance is #{1000 - amount}."
# 				else 
# 					puts "I'm sorry, you do not have $#{amount} in your account."
# 				end
# 			else
# 				puts "That is incorrect"
# 			end
# 		end

# 		private
# 		def pin
# 			@pin = 1234
# 		end
# 	end

# 	checking = Account.new
# 	checking.welcome("Emily")
# 	checking.withdraw(4321, 10000)

#