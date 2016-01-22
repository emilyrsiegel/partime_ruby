# Week 2 Lab

# #lyrics to 99 bottles of beer on the wall
# def bottlesong
# numbottles = 99
# until numbottles == 0
# 	if numbottles == 1
# 		puts "#{numbottles} bottle of beer on the wall, #{numbottles} bottle of beer. You take one down, you pass it around, #{(numbottles - 1)} bottles of beer on the wall."
# 	else 
# 	puts "#{numbottles} bottles of beer on the wall, #{numbottles} bottles of beer. You take one down, you pass it around, #{(numbottles - 1)} bottles of beer on the wall."
# end
# 	numbottles -= 1
# end
# end

# bottlesongr

# numberb = 99

# while numberb > 0
# 	if numberb == 1
# 		puts "#{numberb} bottle of beer on the wall, #{numberb} bottles of beer. You take one down, you pass it around, #{(numberb - 1)} bottles of beer on the wall."
# 	else
# 	puts "#{numberb} bottles of beer on the wall #{numberb} bottles of beer. You take one down, you pass it around, #{(numberb - 1)} bottles of beer on the wall."
# end
# 	numberb -= 1
# end

# Deaf Grandma program. Only exits out of BYE
def deafgrandma
	answer1 =" "
	puts "Hello Emily, how are you today?"
	until answer1 == "BYE"
	answer1=gets.chomp
		if answer1 == answer1.upcase && answer1 != "BYE"
			year = rand(1930..1980)
			puts "NO, NOT SINCE #{year}!"
		elsif answer1 != answer1.upcase
			puts "HUH?!, SPEAK UP SONNY!"
		end 
	end
end
			
#deafgrandma


def deafgrandma
	puts "Hello Emily, how are you today?"
	answer1 =" "
	consec_answer=0
	answer2 = "BYE"
	until consec_answer==3
	answer1=gets.chomp
		if answer1=="BYE" && answer2=="BYE"
			consec_answer+=1
			puts "HUH?!"
		elsif answer1 == answer1.upcase && answer1 != "BYE"
			year = "19"+rand(30..80).to_s
			puts "NO, NOT SINCE #{year}!"
			consec_answer=0
		elsif answer1 != answer1.upcase and answer1!="BYE"
			puts "HUH?!, SPEAK UP SONNY!"
			consec_answer=0
		end 
	answer2==answer1
	end
end

deafgrandma

# def bye3
# 	puts "Hello Emily, how are you today?"
# 	answer1 = gets.chomp
# 	over = 0
# 	until over == 3
# 	if answer1 == "BYE"
# 		puts "HUH?"
# 		answer1 = gets.chomp
# 		if answer1 == "BYE"
# 			puts "WHAT?"
# 			answer1 = gets.chomp
# 			if answer1 == "BYE"
# 				over +=1
# 			break
# 			end
# 		end
# 		elsif answer1 == answer1.upcase && answer1 != "BYE"
# 			year = rand(1930..1980)
# 			puts "NO, NOT SINCE #{year}!"
# 			answer1 = gets.chomp
# 		else 
# 			puts "HUH?!, SPEAK UP SONNY!"
# 			answer1 = gets.chomp
# 		end
# 	end
# end

# 	bye3

		

			


#number guessing game

def numberguessing
	number_guessed = 0
	number = rand(1..100).to_s
	puts "#{number}"
	puts "I'm thinking of a number between 1 and 100. Can you guess it?"
	guesses = 0
	until number_guessed == number || guesses == 5
	number_guessed = gets.chomp
	guesses += 1
		if number_guessed == number
			puts "Congratulations!"
		elsif number_guessed < number
			puts "You should guess higher. You have #{5-guesses} guesses left"
		else
			puts "You should guess lower. You have #{5-guesses} guesses left"
		end
	end
end

#numberguessing

def price_of_gold_from_pounds
	puts "How many pounds of gold do you have?"
	pounds = gets.chomp.to_f
	ounces = (pounds * 16).to_f
	print "Awesome, you have $#{ounces * 1336} worth of gold. "
end

#price_of_gold_from_pounds

def price_of_gold_from_kilograms(k)
	ounces = (k * 35.274).to_f
	puts "Also, your friend said they had #{k} kilograms of gold. Just so you know that's $#{ounces * 1336} worth of gold."
end

# price_of_gold_from_pounds
# price_of_gold_from_kilograms(10)

#iteration
			
	




