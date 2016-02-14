module Sports
	def favorite_sports
		puts "I like to swim! What do you like?"
		sports = gets.chomp.capitalize
			if sports == "Golf"
				puts "Well that's boring!"
			elsif sports == "Swim"
				puts "Me too!"
			else
				puts "That is cool I guess."
		end
	end


end