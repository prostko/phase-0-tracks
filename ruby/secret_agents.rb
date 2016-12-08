# Encrypt
def encrypt(password)
	# Make the Loop

		#-in order to encrypt, first give the method a name

		#-index set to 0, to start loop from the beginning of the word
	index = 0
		
	while index < password.length
		#-find the length with built-in method [.length]
		p password[index].next
		#-using length of the word given to us by .length the method will know how many times to loop through
		index += 1
		#-make index break point = to .length
	end
	# Encrypt the password

		#-add on .next to method_name so that every letter advances to next letter in the sequence of the alphabet
	
		#-use variable_password[index] connected with .next to complete the method
	
		#-close out loop

# Decrypt

def decrypt(password)
	index_counter = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	# Make the Loop
	while index_counter < password.length
		#-put index set as "abc...xyz"
		p password[index_counter] = alphabet.index[(password[index_counter].index)-1]
															

		#-give method name: decrypt alphabet.index[]
		index_counter += -1
		#-find length of word with .length
	
		#-use length of the word to give condition to the loop how many times to cycle through password


	# Decrypt the password

		#-Revert the word to normal by making a loop that goes through the word using the index 

		#-using the index[alphabet] find position of each letter in the password and subtact one from that index[position] once 
	
		#-take that new letter referenced by the index and insert it into the password index position 

