# class Person

	
# 	def initialize(name)
# 		puts "You just created #{name}"
# 	end

# end
# Person.new("john")


# class Person
# 	def initialize(name, age)
# 		@name = name
# 		@age_inyears = age
# 	end

# 	def introduce_self
# 		puts "Hi, my name is #{@name}"
# 	end

# 	def age_inyears
# 		puts "I am #{@age_inyears} years old"
# end
# end

# nancy = Person.new("nancy", "24")
# nancy.introduce_self
# nancy.age_inyears

# class Person
# 	def initialize(name)
# 		@name = name
# 	end
# 	def name
# 		@name
# 	end
# end
# person = Person.new ("emily")
# person.name

# class Car
# 	attr_reader :velocity
# 	attr_writer :velocity
# end



class Person
	attr_writer :name
	def name
		@name
	end
end

person = Person.new
person.name ="Nancy"
puts person.name


