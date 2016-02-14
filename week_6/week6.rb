# module ParseCSV
# 	def load_file(file)
# 		File.open(file)
# 	end
# end
# end

# new_csv = ParseCSV.new

module Xml #<--name spacing, both classes use Document which is okay because of module; module used for multiple inherentence
	class Document
		def do_something
			puts "I'm doing Something with a XML document"
		end
	end
end

module Pdf
	class Document
		def do_something
			puts "I'm doing Something with a PDF document"
		end
	end
end

# pdf_document = Pdf::Document.new
# puts pdf_document
# puts pdf_document.do_something
# xml_document = Xml::Document.new
# puts xml_document
# puts xml_document.do_something

# module Bird
# 	def preen 
# 		puts "I am cleaning my feathers."
# 	def fly
# 		puts "how does this work?"
# 	end
# end
# require './bird'
# class Penguin 
# include Bird
# 	def fly
# 		puts "Sorry. I'd rather fly."
# 	end
# end

# p = Penguin.new
# p.Penguin

module Sports
	def sports
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

module Food
	def favorite_sports
		puts "taco"
	end
end

class Favorites
	include Sports
	include Food
end

hobby = Favorites.new
hobby.sports
hobby.favorite_sports

#compare to an array.