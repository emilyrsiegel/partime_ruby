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
			@gender = gets.chomp.capitalize
			puts "Do you have a CPS ID? Y or N"
			@cpsid = gets.chomp.capitalize
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
			@live_chicago = gets.chomp.capitalize
				if @live_chicago == "Y"
				search
				else
					ineligible
				end
		end

def search
	puts "Step 2: Find Programs. Use the search filters to narrow your search of programs. Would you like to search by Content Area, Model Type, or both?"
		search_filter = gets.chomp
			if search_filter == "Content Area"
				puts "Are you interested in Arts, Science, Sports, Tech, or Communication?"
				@content_area = gets.chomp
				program_options
			elsif search_filter == "Model Type"
				puts "Would you like a Pre-Apprenticeship, Apprenticeship, Advanced-Apprenticeship, or Internship?"
				@model_type = gets.chomp.capitalize
				program_options
			elsif search_filter == "Both"
				puts "Are you interested in Arts, Science, Sports, Tech, or Communication?"
				@content_area = gets.chomp.capitalize
				puts "Would you like a Pre-Apprenticeship, Apprenticeship, Advanced-Apprenticeship, or Internship?"
				@model_type = gets.chomp.capitalize
				program_options
			end
		end


def program_options
	@gallery = ["Program Name: Advanced Culinary Arts", "Content Area: Arts", "Model Type: Advanced Apprenticeship", "Location: Bethlehem Lutheran Church"]
	@sports = ["Program Name: Cricket @ Warren Park", "Content Area: Sports", "Model Type: Apprenticeship", "Location: Warren Park"]
	@sports_cps = ["Program Name: Lifeguard @ Bogan High School", "Content Area: Apprenticeship", "Model Type: Apprenticeship", "Location: Bogan High School"]
	@tech = ["Program Name: TechKno Camp", "Content Area: Tech", "Model Type: Apprenticeship", "Location: Legends South Development"]
	@tech_advanced = ["Program Name: Advanced Video Production", "Content Area: Tech", "Model Type: Advanced Apprenticeship", "Location: Gallery37"]
	@communications = ["Program Name: Marshall Debate", "Content Area: Communications", "Model Type: Apprenticeship", "Location: Marshall Metropolitan High School"]
		if @gender == "Female" && @grade == 10
		puts @gallery && @tech
	else
		puts "Sorry no program options for you!"
	end
end


def ineligible
	puts "You are ineligible for an After School Matters program"
	exit
end 

private
def appid
	appid = "E2C2R48S"
end

end


teen = Teen_Application.new


