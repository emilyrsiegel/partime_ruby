# hash = {"first_name" => "Emily", "last_name" => "Siegel"}

# hash.each do |k,v|
# 	puts "my #{k} is #{v}"
# end

# {:name => "emily" , :age => 24}
# puts person[:name] = "siegel"
# puts person.inspect

# array = [4,5,6]
# # array.each do |xi|
# # 	puts xi * 2
# # end

# # array.each do |emily|
# # 	puts emily
# # end

# array.each {|num| puts num * 2}

# i=0
# while i<array.length
# 	puts array [i]
# 	i+=1
# end

# hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e"=>5}
# # hash.each do |a,b|
# 	puts "key: #{a}"
# 	puts "value: #{b}"
# end

# numbers = [1,2,3,4,5,6,7,8,9,10]
# numbers.each do |number|
# 	puts number + 1

# end

# (1..12).each do |number|
# 	puts number
# end

# Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). 

def leapyear
	puts "Tell me a starting year"
	starting_year=gets.chomp
	puts "Tell me an ending year"
	ending_year=gets.chomp
	(starting_year..ending_year).each do |year|
		puts year
	end
end

#leapyear

def leapyear_1
	puts "Tell me a starting year"
	starting_year=gets.chomp.to_i
	puts "Tell me an ending year"
	ending_year=gets.chomp.to_i
while starting_year <= ending_year
	if starting_year % 4 == 0
		puts starting_year
	elsif starting_year % 100 == 0
	elsif starting_year % 400 == 0
		puts starting_year
		
	end

	starting_year = starting_year + 1
end
end

leapyear_1

# def leapyear2
# 	puts "Tell me a starting year"
# 	starting_year=gets.chomp
# 	puts "Tell me an ending year"
# 	ending_year=gets.chomp
# 	(starting_year..ending_year).each do {|starting_year| starting_year % 4== 0}
# 	puts starting_year...ending_year

# end

# leapyear2
		


