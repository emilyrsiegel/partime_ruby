# name = "Emily"
# puts "Hey #{name}"

# def say_hello(name)
# 	puts "Hellloooo #{name}"
# end

# say_hello("Emily") #<--argument or parameter

# def calc_annual_salary(wkly_salary)
# 	annual = wkly_salary * 52
# 	puts annual
# end

# calc_annual_salary(100)

# def drinking
# 	puts "What's your age?"
# 	age = gets.chomp.to_i #<--must use to_i when asking for user input
# 	if age >= 100
# 		puts "Yeah Right"
# 	elsif age >= 21
# 		puts "Drink"
# 	else
# 		puts "Too young"
# 	end
# end

# drinking

# def numberguessing
# 	number_guessed = 0
# 	number = rand(1..100)
# 	puts "#{number}"
# 	puts "I'm thinking of a number between 1 and 100. Can you guess it?"
# 	guesses = 0
# 	until number_guessed == number || guesses == 5
# 	number_guessed = gets.chomp.to_i
# 	guesses += 1
# 		if number_guessed == number
# 			puts "Congratulations!"
# 		elsif number_guessed < number
# 			puts "You should guess higher. You have #{5-guesses} guesses left"
# 		else
# 			puts "You should guess lower. You have #{5-guesses} guesses left"
# 		end
# 	end
# end

# numberguessing #look at example from class for using a class to do this

# class Person
# 	def initialize name, location
# 		@name = name
# 		@location = location  #because passing in variables
# 	end
# 		def say_hello
# 			puts "hello #{@name}"
# 		end

	# true || true #<--with or, if either side is true, it's true. With && both sides have to be true to be true.



#another_arr.map {|num| num == 10 ? "bob" : num} go through each if num is = to 10 put Bob, if not, put the number. The map is iterating through the array and creating a new array. 

#codequizes

# (1..100).to_a #<--turn into an array

# def range
# numbers = (1..100).to_a
# numbers.select do |number|
# 	if number % 3 == 0 && number % 5 == 0
# 	puts number
# end
# end
# end

#range

# puts array = (1..100).to_a.select { |num| % 3 == 0 && num % 5 == 0}

# def sum
# 	numbers = [1,2,3,4]
# 	puts numbers[0]+numbers[1]+numbers[2]+numbers[3]
# end

# sum

# fav_numbers = [1,2,3,4]
# array = fav_numbers.select do |number|
# 	puts number.even?
# end

# def range
# numbers = (1..100).to_a
# numbers.select do |number|
# 	if number % 3 == 0 && number % 5 == 0
# 	sum = 0
# 	array.each do |number|
# 		sum +=number
# 		puts sum
# 	end
# end
# end

# range

# # 
# sum2 = 0
# array2 = (1..100.to_a.each do |num2|
# 	if num2 % 15 == 0
# 		sum2 += num2
# 	end
# end

# puts sum2

# days = ['mon', 'tues', 'wed', 'thurs', 'fri']
# p days.values_at(0,2)

first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

first_names.each do |first_names|
	puts first_names + " " + "#{last_name}"
end


