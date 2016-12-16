=begin
		
Alias generator
	`Takes user name; first and last
		`get the name from the user
		`make it lowercase

	Creates a fake name
		`switches the first and last name
			- create a name switcher, using index location
			- take the string and turn it into an array, breaking at the spaces
			- add the index[0] back in
			- return the range from [1]...[-1]
			- turn it back into a string
				!! keep the spaces !!

			* this is all accomplished using .rotate

		`changing all the vowels to the next letter in the aeiou string
			- define a cypher seed (aeiou)
			- break the array into individual letters
			- search each of the letters for aeiou
				?? use a regex of aeiou?
				- skip if it's a space
				- if they return true (match)
					- find that next letter.index in the seed, and replace the letter.index+1 in the cypher
			- might be easier to find letter.index in seed, then rotate the seed, possibly not 
				!! will eliminate edge cases !!
			- turn back into a string
				!! Keep the spaces !!
		`changing all the consonants to the next consonant in the alphabet
			- do this the same way as with the vowels, using the rotate
	Returns the fake name
=end






def take_the_name
	puts "please input name to alias"
	user_name = gets.chomp
	user_name
end

def switch
	name = take_the_name
	switched_name = name.split(" ").rotate
	switched_name.join(" ")
end

def rotate_vowels
  
 	user_name = switch
	vowels = ["a", "e", "i", "o", "u"]
	next_vowels_arr = []
  
	user_name_array = user_name.chars

	user_name_array.map do |letter|
		if (letter =~ /[aeiou]/) == 0 
      		until vowels[0] == letter
      			vowels.rotate!
      		end
      		next_vowels_arr << vowels[1]
      elsif (letter =~ /[AEIOU]/) == 0 
      		until (vowels[0].upcase) == letter
      			vowels.rotate!
      		end
      		next_vowels_arr << vowels[1].upcase
    	else next_vowels_arr << letter
    	end
  	end
  user_name = next_vowels_arr.join
end

def rotate_consonants

	user_name_array = rotate_vowels.chars
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	next_consonants_arr = []

	user_name_array.map do |letter|
		if (letter =~ /[bcdfghjklmnpqrstvwxyz]/) == 0
			until consonants[0] == letter
				consonants.rotate!
			end
			next_consonants_arr << consonants[1]
		elsif (letter =~ /[BCDFGHJKLMNPQRSTVWXYZ]/) == 0
			until consonants[0].upcase == letter
				consonants.rotate!
			end
			next_consonants_arr << consonants[1].upcase
		else next_consonants_arr << letter
		end
  	end
 p "...\n"
 p user_name = next_consonants_arr.join
 p "please press enter key"
 clr = gets.chomp
 puts "\n\n\n"

 begin_program
end


def aquittal
	puts "If you would like to exit, please type 'quit'"
	continue = gets.chomp.downcase
	continue[0] == "q" ? true : false
end

def begin_program
	
	puts "Would you like to alias you name?"
	response = gets.chomp.downcase
	response[0] != "n" ?  rotate_consonants : until aquittal do begin_program end

end

puts "Hello\n\n"
begin_program









