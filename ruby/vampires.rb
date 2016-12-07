
#asking user for number or employees, making program run that many times
def employee_questions 
	puts "Hello, welcome to the Werewolves Inc. "

	puts "Please answer the following questions accurately"

	puts "What is your name?"

		name = gets.chomp

	puts "How old are you? What year were you born?"

		age = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"

		food = gets.chomp

	puts "Would you like to enroll in the company's Health Insurance?"

		insurance = gets.chomp

#ask user for allergy input, add each answer to an array, stop when done is input 
	puts "If you have any allergies, please input them one at a time, or type 'done'"
	
		allergies = []

	until (allergy = gets.chomp.downcase) == "done" do

		if allergy == "sunshine" 
		allergies = ["Probably a Vampire"] 
		break
		else puts "Please input additional allergy, or type 'done'"
			allergies << allergy

		end
	end
end



def initial
	puts "Hello, welcome to employee-testing"
	puts "Initializing..."
	puts "Please input number of employees to be processed."

	num_emp = gets.chomp.to_i

	(num_emp).times do employee_questions end
end

initial

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


