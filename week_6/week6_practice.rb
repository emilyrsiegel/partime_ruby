# personality_types = ["bad", "good", "great"]
# p personality_types.map { |word| word + " person"}
# p personality_types.join " "

# ["Hamburglar", "Grimace", "Ronald"].map do |name|
# 	puts name + " McDonald"
# end

# class Number_Guessing

# def initialize
# 	puts "Hello! Guess a number between 1 and 100. You have 5 guesses."
# 	begin_game
# end

# def begin_game
# 	@number = rand(1..100)
# 	@guesses = 0
# 	@number_guessed = 0
# 	puts "#{@number}"
# 	until @number_guessed == @number || @guesses == 5
# 		@number_guessed = gets.chomp.to_i
# 		@guesses +=1
# 		if @number_guessed == @number 
# 			puts "Congratulations, you got it!"
# 		elsif @number_guessed < @number
# 			puts "Too low! Try again"
# 		else 
# 			puts "Too high! Try again"
# 		end
# 	end
# 	end_game
# end

# def end_game
# 	if @guesses == 5 
# 		puts "I'm sorry, you are all out of guesses!"
# 	end
# end

# end

# game = Number_Guessing.new

# module Greetings
# 	def hello
# 		puts "Hello!"
# 	end

# 	def bonjour 
# 		puts "Bonjour!"
# 	end

# 	def hola
# 		puts "Hola!"
# 	end
# end

# class User
# 	include Greetings
# end

# emily = User.new
# emily.hola
# emily.hello

# module Notes
# 	def tuning (amt)
# 		@concertA = 440.0 + amt
# 	end
# end

# class Trumpet
# 	def initialize(amt)
# 		tuning(amt)
# 		puts "Instance variable is #{@concertA}"
# 	end
# end

# test = Trumpet.new(-5.3)

# require './music'

# class Concert
# def favorite_concert
# 	puts "I love concerts!"
# end
# include Music
# end

# concert_one = Concert.new
# concert_one.favorite_music
# concert_one.favorite_concert

def school

puts "Please select your school: CPS High School, Private School, Elementary School, Home School, Suburban High School, College"
				school = gets.chomp
				if school == "CPS High School"
					puts "Please enter the CPS high school you attend."
					cpsschool = gets.chomp
				elsif school == "Private School"
				else 
					puts "You are not eligible for an After School Matters program"
				end
			puts "Please enter your grade"
			grade = gets.chomp.to_i
	end

school





