etters = ["aaa", "b", "c", "d", "e", "aa"]

superheroes = {
	superman:"flying",
	batman:"killing",
	spiderman:"saving_people"
}

numbers = [1, 2, 3, 4]

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








letters = ["aaa", "b", "c", "d", "e", "aa"]

superheroes = {
	superman:"flying",
	batman:"killing",
	spiderman:"saving_people"
}



#        Release 1

# Running the .each method
	# Running .each on the array
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




