require 'rubygems'
require 'firebase'

class Teen_Application
	def initialize
		@gallery = ["Program Name: Advanced Culinary Arts", "Content Area: Arts", "Model Type: Advanced Apprenticeship", "Location: Bethlehem Lutheran Church"]
		@sports = ["Program Name: Cricket @ Warren Park", "Content Area: Sports", "Model Type: Apprenticeship", "Location: Warren Park"]
		@sports_cps = ["Program Name: Lifeguard @ Bogan High School", "Content Area: Apprenticeship", "Model Type: Apprenticeship", "Location: Bogan High School"]
		@tech = ["Program Name: TechKno Camp", "Content Area: Tech", "Model Type: Apprenticeship", "Location: Legends South Development"]
		@tech_advanced = ["Program Name: Advanced Video Production", "Content Area: Tech", "Model Type: Advanced Apprenticeship", "Location: Gallery37"]
		@communications = ["Program Name: Marshall Debate", "Content Area: Communications", "Model Type: Apprenticeship", "Location: Marshall Metropolitan High School"]
		puts "Welcome to After School Matters! Would you like to start a new spring application (Enter Start), return to an existing application (Enter Return), or browse program options (Enter Browse)?"
		answer = gets.chomp.capitalize
			if answer == "Start"
				application_id
				enter_basic
			elsif answer == "Return"
				existing_application
			elsif answer == "Browse"
				browse_programs
			else
				puts "We hope you consider applying for an After School Matters program soon!"
			end
		end

		def application_id
			@applicationid = rand(36**8).to_s(36).upcase
			puts "Your application id is #{@applicationid}"
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
					@cpsid_number = gets.chomp
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
		puts "Step 2: Find Programs. Use the search filters to narrow your search of programs. Would you like to search by Content Area, Model Type, or Both?"
		search_filter = gets.chomp
			if search_filter == "Content Area"
				puts "Are you interested in Arts, Science, Sports, Tech, or Communication?"
				@content_area = gets.chomp.capitalize
				program_options
			elsif search_filter == "Model Type"
				puts "Would you like a Pre-Apprenticeship, Apprenticeship, Advanced-Apprenticeship, or Internship?"
				@model_type = gets.chomp
				program_options
			elsif search_filter == "Both"
				puts "Are you interested in Arts, Science, Sports, Tech, or Communication?"
				@content_area = gets.chomp.capitalize
				puts "Would you like a Pre-Apprenticeship, Apprenticeship, Advanced-Apprenticeship, or Internship?"
				@model_type = gets.chomp, "\n"
				program_options
			end
		end


	def program_options
		puts "Please see below for your program options:", "\n"
			if @content_area == "Arts"
				puts @gallery
			elsif @content_area == "Sports" && @model_type == "Apprenticeship" && @cpsschool != "Bogan High School"
				puts @sports
			elsif @content_area == "Sports" && @cpsschool == "Bogan High School"
				puts @sports_cps, "\n"
				puts @sports
			elsif @model_type == "Apprenticeship" && @cpsschool == "Bogan High School"
				puts @sports_cps, "\n"
				puts @sports, "\n"
				puts @tech,  "\n"
			elsif @content_area == "Sports" && @cpsschool != "Bogan High School"
				puts @sports
			elsif @content_area == "Tech"
				puts @tech, "\n"
				puts @tech_advanced, "\n"	
			elsif @content_area == "Tech" && @model_type == "Apprenticeship"
				puts @tech
			elsif @content_area == "Tech" && @model_type == "Advanced Apprenticeship"
				puts @tech_advanced
			elsif @content_area == "Communications" && @cpsschool == "Marshall High School"
				puts @communications
			elsif @content_area == "Communications" && @model_type == "Apprenticeship" && @cpsschool == "Marshall High School"
				puts @communications
			elsif @model_type == "Apprenticeship" && @cpsschool !="Marshall High School" && @cpsschool !="Bogan High School"
				puts @tech, "\n"
				puts @sports, "\n"
			elsif @model_type == "Apprenticeship" && @cpsschool == "Marshall High School"
				puts @communications, "\n"
				puts @tech, "\n"
				puts @sports, "\n"
			elsif @model_type == "Advanced Apprenticeship"
				puts @tech_advanced, "\n"
				puts @gallery, "\n"
			else
				puts "I'm sorry, there are no program options that you are eligible for and meet your search criteria. Please try your search again.", "\n"
				search
			end

		# data_collect
		end


	def browse_programs
		puts @gallery, "\n"
		puts @sports, "\n"
		puts @sports_cps, "\n"
		puts @tech, "\n"
		puts @tech_advanced, "\n"
		puts @communications, "\n"
		puts "Enter Start to being your application"
			browse_answer = gets.chomp.capitalize
			if browse_answer == "Start"
				enter_basic
			else 
				puts "Thank you for your interest in After School Matters!"
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

def data_collect
		base_uri = 'https://teenappruby.firebaseio.com/'
		firebase = Firebase::Client.new(base_uri)
		response = firebase.push("todos", { :application_id => @applicationid, :first_name => @first_name, :last_name => @last_name, :birth_date => @birth_date, :gender => @gender, :cpsid => @cpsid, :school => @school, :cpsschool => @cpsschool, :cpsid_number => @cpsid_number, :grade => @grade, :live_chicago => @live_chicago, :content_area_search => @content_area, :model_type_search => @model_type})
	end

end


teen = Teen_Application.new





