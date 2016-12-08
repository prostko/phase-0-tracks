# Encrypt




def encrypt(password)
  
 index = 0
  
  encrypt_array = []

	 while index < password.length
	 
	  if password[index] == "z" 
	    
	    encrypt_array << "a"
	  else
	   
	    encrypt_array << password[index].next
	    
    end
    

  index += 1
  end
  p encrypt_array
end

	# Make the Loop

		#-in order to encrypt, first give the method a name

		#-index set to 0, to start loop from the beginning of the word
	
		#-find the length with built-in method [.length]
		
		#-using length of the word given to us by .length the method will know how many times to loop through
		
		#-make index break point = to .length

	# Encrypt the password

		#-add on .next to method_name so that every letter advances to next letter in the sequence of the alphabet
	
		#-use variable_password[index] connected with .next to complete the method
	
		#-close out loop

# Decrypt

def decrypt(password)
   
	index_counter = 0
	
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	
	decrypt_array = []
	
	  until index_counter == password.length
	
		  encrypt_reverse = alphabet.index(password[index_counter])

		  minused_letter = encrypt_reverse - 1
		  
		  decrypt_array << alphabet[minused_letter]
      
		  index_counter += 1
      
	  end
	  p decrypt_array
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


