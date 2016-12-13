#             Release 2

#the array and hash to expiriment with
	numbers = [1, 2, 3, 4]

	letters = ["aaa", "b", "c", "d", "e", "a", "b", "h"] 

	roman_nums = {
		"1" => "I",
		'5'=> "V",
		"10" => "X",
		this: "C"
	}



letters.delete("aaa")
p letters

new_number_array = []
new_number_array = numbers.drop_while do |number|
	number < 3
end
p new_number_array


numbers.select! do |number|
	p number > 2
end
p numbers

numbers.keep_if do |number|
	number > 1
end
p numbers

numbers.delete_if do |number|
	number < 3
end
p numbers









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
	p superhero
	new_superhero_hash = superheroes.map do |superhero, power|
		p "#{superhero}, #{power}"
	end
	puts "This is after running the superhero hash .map block"
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

 # Running the destructive 
	p "This is before running the superhero hash .map! block"
	p superheroes
	superheroes.map! do |superhero, power|
		p "#{superhero}, #{power}"
	end
	p "This is after running the superhero hash .map! block"

end


each_map_exp