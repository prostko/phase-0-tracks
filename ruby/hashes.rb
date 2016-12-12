=begin

 Interior designer CRM Database
	
	Create and update a hash 
		- Create and name a Hash
		- Create questions
		- Get user input from all of these questions
			-name			-favorite color until done
			-age			-rich?
			-Children?		-favorite luxury brands until done
			-# of children  - scale of 1-5, how awesome is Kanye West
		-Get user input from all of these questions
			- Make a simple while loop for until done'z
		- Inject the information into a hash with the proper key value pair
		
	Print the hash
		- print the hash

	Give user opportunity to update the hash
		- Until loop, update until 'none'
			- Update
				- Take a string input and turn it into a symbol
				- Search the hash for that symbol
				- Update the information
				- Reprint the hash, ask for update, or 'none'
			-'None'

=end



client_info = {}
brands_ary = ["none"]



def ask_questions
	puts "What is the client's name?"
	client_name = gets.chomp

	puts "What is the clients age"
	client_age = gets.chomp

	puts "Does the client have children?"
	client_children = gets.chomp

	if client_children[0].downcase == "y"
		puts "How many children?"
		num_children = gets.chomp.to_i
	else num_children = 0
	end

	puts "What is the client's favorite color?"
	client_fav_color = gets.chomp

	puts "Is the client rich?"

	client_rich = gets.chomp
	client_rich[0] == "y" ? client_rich = true : client_rich = false

	puts "Please input the client's favorite luxury brands or input 'none'"
	client_brands = gets.chomp
	brands = "none" if client_brands == "none"
	while client_brands != "none"
		



end

def make_hash
	client_info = {}
	#each variable into hash with a relevant symbol
end

def print_hash
end

def update?(answer)
	#answer will be a string
end

