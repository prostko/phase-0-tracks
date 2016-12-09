
#method asking user for number or employees, making program run that many times


def employee_questions 
	puts "Hello, welcome to the Werewolves Inc. "

	puts "Please answer the following questions accurately"

	puts "What is your name?"

		name = gets.chomp

# Age math section

	puts "How old are you?"

		age_input = gets.chomp.to_i

	puts" What year were you born? (YYYY)"

		year_input = gets.chomp.to_i

	    age_math = 2016 - year_input

	    math_result = false if age_input > year_input 
	    math_result = false if age_input < year_input

# Food logic section
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"

		food_input = gets.chomp.downcase

		case food_input[0]
		when "y"
			food = true
		when "n"
			food = false
		else food = "inconclusive"
		end
#Insurance Logic section	
	puts "Would you like to enroll in the company's Health Insurance?"

		insurance_input = gets.chomp.downcase

		case insurance_input[0]
		when "y"
			insurance = true
		when "n"
			insurance = false
		else insurance = "inconclusive"
		end

#ask user for allergy input, add each answer to an array, stop when done is input 
	puts "If you have any allergies, please input them one at a time, or type 'done'"
	
		allergies = ["allergies:"]

		until (allergy = gets.chomp.downcase) == "done" do

			if allergy == "sunshine"
				allergies = ["Allergies:", "Input sunshine, probably a vampire!"]
			break
			else puts "Please input additional allergy, or type 'done'"

				allergies << allergy 
			end
		end

# Beginning the vampire detection logic, aka why they pay us the big bucks

	if (age_input == age_math) && (food == true || insurance == true)
		result = "Probably not a vampire"

	elsif (age_input != age_math) && (food == false || insurance == false)
		result = "Probably a vampire"
	elsif (age_input != age_math) && food == false && insurance == false
		result = "Almost certainly a vampire"
	elsif name == ("Drake Cula" || "Tu Fang")
		result == "Definitely a vampire"
	else result = "Results inconclusive......-or are they?-.."
	end
# Putting vampire result if allergy was sunshine
	
	result = "Probably a vampire" if allergy == "sunshine" 

	puts "..."
	puts "..."
	puts "..."
	puts "  #{name.capitalize} is too young to work here." if age_input <= 18
	puts allergies if allergies == ["Allergies:", "Input sunshine, probably a vampire!"]
	puts "  Our testing concludes that #{name} is #{result}!"
end




#beginning of program

def initial
	puts "Hello, welcome to employee-testing"
	puts "Initializing..."
	puts "Please input number of employees to be processed."

	num_emp = gets.chomp.to_i

	(num_emp).times do employee_questions end

	puts "..."
	puts "..."
	puts "..."
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

initial




