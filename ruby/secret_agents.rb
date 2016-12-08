# Encrypt




def encrypt(password)
  
 index = 0
  #setting counter to zero
  encrypt_array = []
  # making an empty array to put encrypted password inside
	 while index < password.length
	 #beginning while loop, setting break to length of input string
	  if password[index] == "z" 
	    #setting conditional logic to fix edge case problem with "z"
	    # password[index] locates character index inside string, returns a letter
	    encrypt_array << "a"
	    # shoveling the a into the array
	  else
	   #else catching everything except "z"
	    encrypt_array << password[index].next
	    # password[index] returns a letter, then calling .next to return the next character in the sequence
	    # shoveling encrypted character into array
    end
    
    # Adding 1 to the counter, so loop will eventually end
  index += 1
  end
  # Printing out results of encrypt and making array of characters a single string
  p "#{encrypt_array.join}"
end


	# Make the Loop

		#-in order to encrypt, first give the method a name

		#-counter set to 0, to start loop from the beginning of the word
	
		#-find the length with built-in method [.length]
		
		#-using length of the word given to us by .length the method will know how many times to loop through
		
		#-make index break point = to .length

	# Encrypt the password

		#-add on .next to method_name so that every letter advances to next letter in the sequence of the alphabet
	
		#-use variable_password[index] connected with .next to complete the method
	
		#-close out loop


# Decrypt

def decrypt(password)
   #naming the method and setting argument
	index_counter = 0
	# beginning the counter and location of index inside string
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	# This is what we will search inside for the letter index, then subtract 1 from, to return the letter prior
	decrypt_array = []
	# making empty array to shovel decrypted letters inside
	
	  until index_counter == password.length
	  	# making an until loop break point equal to end of the length of the input string
	
		  alphabet_letter_index = alphabet.index(password[index_counter])
		  	# finding indexed letter in password, then finding the location of that letter ( integer ) in alphabet, setting variable to encrypt_reverse
		  minused_letter = alphabet_letter_index - 1
		  	# subtracting 1 from index position ( integer ), giving decrypted letter index
		  decrypt_array << alphabet[minused_letter]
      		# shoveling the returned letter from location in alphabet, (returns a letter)
		  index_counter += 1
      		# adding one to the counter so the loop will eventually end
	  end
	  p "#{decrypt_array.join}"
	   # printing results and making the array of characters a single string
end


	# Decrypt
		# Make the Loop
		#-put index set as "abc...xyz"
		#-give method name: decrypt alphabet.index[]
		#-find length of word with .length
	
		#-use length of the word to give condition to the loop how many times to cycle through password


	# Decrypt the password

		#-Revert the word to normal by making a loop that goes through the word using the index 

		#-using the index[alphabet] find position of each letter in the password and subtact one from that index[position] once 
	
		#-take that new letter referenced by the index and insert it into the password index position 



# Notes:
	#Try nested method call
		# Since Ruby evalutates code within parenthesis first; the word is encrypted first, which allows the decrypt method to decrypt it


puts "Would you like to decrypt or encrypt the password?"

user_input = gets.chomp

puts "What is the password?"

word = gets.chomp

if user_input == "encrypt"
  encrypt(word)
else user_input == "decrypt"
  decrypt(word)

end


