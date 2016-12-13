#             Release 2

#the array and hash to expiriment with
	numbers = [1, 2, 3, 4]

	letters = ["aaa", "b", "c", "d", "e", "a", "b", "h"] 

	roman_nums = {
		'I' => 1,
		'V'=> 5,
		"X" => 10,
		"C" => 100
	}

	#running .delete on the array
		puts "\n\nUsing .delete\n"
		puts "This is before running the letters.delete"
		p letters
		puts "This is after running the letters.delete block"
		p letters.delete("aaa")
	

	#running .delete on the hash
		puts "This is after running the roman_nums.delete block"
		p roman_nums
		puts "This is after running the roman_nums.delete block"
		roman_nums.delete("X")
		p roman_nums

	# Resetting the hash, after the deletion
		roman_nums = {
		'I' => 1,
		'V'=> 5,
		"X" => 10,
		"C" => 100
	}





	#running .drop_while on the array
		puts "\n\nUsing .drop_while on array, and reject! on hash\n"
		num_array = []
		puts "This is before running the numbers.dropwhile block"
		p numbers
		num_array =  numbers.drop_while do |number|
			number < 3
		end
		puts "This is after running the letters.drop_while block"
		p num_array

	# Running .reject! on hash

		puts "This is before running the roman_nums.reject! block"
		p roman_nums
		puts "This is after running the roman_nums.reject! block"
		roman_nums.reject! do |roman, num|
			 num < 5
		  end
		 p roman_nums



		 # Resetting the hash, after the deletion
		roman_nums = {
		'I' => 1,
		'V'=> 5,
		"X" => 10,
		"C" => 100
	}





	# Running .select! on array
		puts "\n\n  Using .select \n"
		puts "This is before running the numbers.select! block"
		p numbers
		numbers.select! do |number|
			number > 2
		end
		puts "This is after running the numbers.select! block"
		p numbers
		# Running .select! on hash
		puts "This is before running the numbers.select! block"
		p roman_nums
		puts "This is after running the roman_nums.select! block"
		roman_nums.select! do |roman, num|
			roman > "I"
		end
		p roman_nums






	 # Resetting the hash, after the deletion
		roman_nums = {
		'I' => 1,
		'V'=> 5,
		"X" => 10,
		"C" => 100
	}






	# Running .keep_if on array
	puts "Before number.keep_if"
	p numbers
	numbers.keep_if do |number|
		number > 1
	end
	puts "After numbers.keep_if"
	p numbers
	# Running .keep_if on hash
	puts "before roman_nums.keep_if"
	p roman_nums
	puts "After roman_nums.keep_if"
	roman_nums.keep_if do |roman,num|
		roman > "I"
	end
	
	p roman_nums


 # Resetting the hash, after the deletion
		roman_nums = {
		'I' => 1,
		'V'=> 5,
		"X" => 10,
		"C" => 100
	}




	# Running .delete_if on hash
	puts "before .delete_if"
	numbers.delete_if do |number|
		number < 3
	end
	puts "after .delete_if"
	p numbers

	# Running .delete_if on hash
	puts "before .delete_if"
	p roman_nums
	roman_nums.delete_if do |roman, nums|
		nums < 100
	end
	puts "after .delete_if"
	p roman_nums
	




#        Release 1

# the aray and hash to expiriment with
	letters = ["aaa", "b", "c", "d", "e", "a", "b", "h"]

	superheroes = {
		superman: "flying",
		batman: "World's greatest butler",
		spiderman: "shooting web"
	}

# Running the .each method
 # Running .each on the array
 def each_map_exp

 	letters = ["aaa", "b", "c", "d", "e", "a", "b", "h"]

	superheroes = {
		superman: "flying",
		batman: "World's greatest butler",
		spiderman: "shooting web"
	}


	puts "\n\n Using .each\n"
	#---------------------------------------
	puts "This is before running the block."
	p letters
	letters.each do |letter|
		puts letter
	end
	p letters
	puts "This would be after running the block."

	# Running .each on the hash
	puts "This is before running the block."
	p letters
	superheroes.each do |superhero, power|
		puts "The superhero #{superhero} has a power of #{power}"
	end
	puts "This would be after running the block."



# Running the .map method
 # Running .map on the array and setting it to a new array
	puts "\n\n Using .map\n"
	#------------------------
	puts "This is before running the letters.map block"
	p letters
	new_letters_array = letters.map do |letter|
		p letter
	end
	puts "This is after running the letters.map block"
	p new_letters_array

	# Running .map on the hash and returning an array
	puts "This is before running the superhero hash .map block"
	p superheroes
	new_superhero_hash = superheroes.map do |superhero, power|
		p "#{superhero}, #{power}"
	end
	puts "This is after running the superhero hash .map block\n"
	p new_superhero_hash


# Running the .map! method
 # Running the destructive .map! on the array
	puts "\n\nUsing .map!\n"
	#--------------------------
	p "This is before running the letters array .map! block"
	p letters
	letters.map! do |letter|
		p letter.next
	end
	p "This is after running the letters array .map! block"
	p letters

 # Running the destructive .map! on the Hash --- NO BUENO
 	def using_map_on_hash 
	p "This is before running the superhero hash .map! block"
	p superheroes
	superheroes.map! do |superhero, power|
		p "#{superhero}, #{power}"
	end
	p "This is after running the superhero hash .map! block"
	end
end

