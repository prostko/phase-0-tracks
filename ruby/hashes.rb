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





def ask_questions
	puts "What is the client's full name?"
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

	puts "Please input the client's favorite luxury brands or input 'done'"
	client_brands = gets.chomp
	if client_brands != "done"
	  brands = [client_brands]
	  until client_brands == "done"
		puts "Please input next brand name or 'done'"
		client_brands = gets.chomp
		brands << client_brands
	  end
	else
		brands = ["no brands"]
	end
	brands.delete_if{|x| x == "done"}
	
	puts "On a scale of 1-5, How much does the client like Kanye West?"

	enjoy_kanye = gets.chomp.to_i
	
	[client_name, client_age, num_children, client_fav_color,client_rich, brands, enjoy_kanye]
end


def inject_into_hash
 	client_info = {}
 	answers = ask_questions
 	client_info[:name] = answers[0]
 	client_info[:age] = answers[1]
 	client_info[:children] = answers[2]
 	client_info[:color] = answers[3]
 	client_info[:rich] = answers[4]
 	client_info[:fav_brands] = answers[5]
 	client_info[:rating_kanye] = answers[6]
  
 	client_info
end

def printout(thehash)
	thehash.each { |x| puts x.to_s[2..-2] }
end

def update 
	client_info = inject_into_hash
	puts "\n \n \n   Here is your client information"
	
	printout(client_info)

	
	puts " Would you like to update?"
		update = gets.chomp

		until update[0] == "n"
      
			puts " Please input which key to update or type 'none'"
			new_key = gets.chomp
		     if new_key[0] == "n"
		       puts "\n"
		       printout(client_info)
		       break
		       end
		  puts " Input new value"
				new_value = gets.chomp
			 if new_value == "true" then new_value = true end
			 if new_value == "false" then new_value = false end
			
			client_info.merge!(new_key.intern => new_value)

      puts "\n \n \n Updated client information: "
			printout(client_info)
			
		end

end

def interior_design_CRM

	puts "Hello, welcome to the Int Design CRM manager. Would you like to input new information into the database?"
		response = gets.chomp
		if response[0] != "n"
			update
			puts "Thanks"
		else puts "Alright, thanks!"
		end
	 puts "Goodbye!"
end

interior_design_CRM
