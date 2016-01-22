#first_name="Emily"
#last_name="Siegel"
#location= "Chicago, IL"

# puts first_name

# print "Hello, my name is #{first_name} #{last_name}. I'm from #{location} and here to learn"

#def say_hello
	#puts "hello"
#end

#def say_hello2(first_name)
	#puts "hello #{first_name}"
#end

#say_hello2("emily")

#def say_hello(first_name, last_name, location)
	#print "Hello, my name is #{first_name} #{last_name}. I'm from #{location} and here to learn"
	
#end

#say_hello("emily", "sigel", "chicago")

#puts "What is your name?"

#name = gets.chomp

#puts "Thanks #{name}."

#puts "What iour age"

#age=gets.chomp.to_i

#puts "Thanks #{name}."

#end


def greeter
	puts "What is your name?"
	name = gets.chomp
	puts "What is your age?"
	age = gets.chomp.to_i
	puts "Welcome to RampUp Ruby #{name}! You are #{age} years old."
end

greeter

