
def fahrenheit_to_celsius
	puts "Enter the fahrenheit temperature: "
	usertemp=gets.chomp.to_i
	puts "Your temperature in Celsius is #{(((usertemp - 32.0) / 9.0) * 5.0).round}"

end

fahrenheit_to_celsius


def celsius_to_fahrenheit
	puts "Enter the celsius temperature: "
	celsius = gets.chomp.to_i
	puts "Your temperature in fahrenheit is #{((celsius * 1.8) + 32).round}"
end

#celsius_to_fahrenheit



def age_calculation
	puts "Enter your name"
	name = gets.chomp.capitalize
	puts "Enter your age"
	age = gets.chomp.to_i
	puts "#{name} was born in #{2015 - age}"
end

#age_calculation



def madlib
	puts "Enter a verb"
	verb = gets.chomp
	puts "Enter a noun"
	noun = gets.chomp
	puts "Enter an adjective"
	adjective = gets.chomp
	puts "Enter another adjective"
	adjective2 = gets.chomp
	puts "Enter another noun"
	noun2 = gets.chomp
	puts "I would like a #{noun} as soon as possible. It would be great to be able to #{verb} all day tomorrow in the #{noun2}. I feel very #{adjective} and #{adjective2}."
end

#madlib




def convert(f)
	puts (((f - 32.0) / 9.0) * 5.0)
end

#convert(45)

def greeter(name)
	puts "hello #{name}"
end

#greeter("emily")



def convert(c)
	puts ((c * 1.8) + 32)
end

#convert(9)










