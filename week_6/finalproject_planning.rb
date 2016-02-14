class Teen_Application
	def initialize
		puts "Hello! Would you like to start a new spring application (Enter Start), or return to an existing application (Enter Return)?"
		answer = gets.chomp.capitalize
			if answer == "Start"
				application_id
				enter_basic
			elsif answer == "Return"
				existing_application
			else
				puts "We hope you consider applying for an After School Matters program soon!"
			end
		end

		def application_id
			applicationid = rand(36**8).to_s(36).upcase
			puts "Your application id is #{applicationid}"
		end

		def existing_application
			puts "Please enter your Application ID"
			existing_appid = gets.chomp
			if existing_appid == appid
				puts "Welcome back! You must begin by entering your basic information"
				enter_basic
			else
				puts "We do not have that Application ID on file. Please try again."
			end
		end

		def enter_basic
			puts "Step 1: Please enter your personal information below."
			puts "First Name: "
			@first_name = gets.chomp
			puts "Last Name: "
			@last_name = gets.chomp
			puts "Birthdate (mm/dd/yyyy)"
			@birth_date = gets.chomp.to_i
			puts "Gender: Female, Male, Choose Not To Identify"
			@gender = gets.chomp
			puts "Do you have a CPS ID? Y or N"
			@cpsid = gets.chomp
				if @cpsid == "Y"
					puts "Enter your CPS ID (8 digits)"
					cpsid_number = gets.chomp
				end
			puts "Please select your school: CPS High School, Private School, Elementary School, Home School, Suburban High School, College"
				@school = gets.chomp
				if @school == "CPS High School"
					puts "Please enter the CPS high school you attend."
					@cpsschool = gets.chomp
				elsif @school == "Private School"
				else
					ineligible
				end
			puts "Please enter your grade"
			@grade = gets.chomp.to_i
				if @grade == 9 || @grade == 10 || @grade == 11 || @grade == 12
			else
				ineligible 
				end
			puts "Do you live in Chicago? Y or N"
			@live_chicago = gets.chomp
				if @live_chicago == Y
				else
					ineligible


		end

def ineligible
	puts "You are not eligible for an After School Matters program"
	exit
end 

private
def appid
	appid = "E2C2R48S"
end

end


teen = Teen_Application.new


