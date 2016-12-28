=begin

Hangman
	One user (hangman) enters a word or phrase. 
		Take that phrase and create a string, each letter represented with '_'
			Analyze the input for letters or other characters
				letters get replaced with "_"
				others get placed unmodified
		Take the length. This is the number of guesses allowed.
		Display the hidden word ('_____')
		Switch to the next user, (the player)
	The next user(player) tries to guess that word by inputting letters.
		Begin new round, round count compared to guess count.
			Display updated word ' _ _ _ _ _   _ _ _ '
			Take guess letter as an input (only one letter is valid)
			search the secret word for that letter,
			if letter is found, display that index position
				(The secret will be a new string every round.)
			have number of guesses = the legnth of unique guesses
		Display the hangman ASCII drawing. 
			Percent of letters remaining dictates when to draw the body parts
	End the game
		If word is guessed (if secret_word == guessed_word) at any point, player wins
			Display nice victory message 
			Display number of guesses
		If word is not guessed when round count == guess count, hangman wins
			Display taunting message in favor of hangman
			Display complete hangman figure
		Inquire about playing another round. 

Create a hangman class
		Each class object will be an instance of the game
			Initialization
				@hangman_word passed as arg.
				@game_word		read/write
				@round_count	read
				@guess_count	read/write
				@guesses        read/write
				@matched_guessesread/write
			The game information will be
				hangman_word - the word to be guessed, taken at the start
				game_word - hangman word in '_____', until round count or equals hangman_word
				round_count - length of hangman word
				guess_count - length of guessed letters, array, repeated letters deleted
				@guesses - array of unique letter guesses
				@matched_guesses - same as above, but letters in hangman word are removed from guesses
		The game will be methods inside of the class that modify its attributes
				Everything in the instance stems from the hangman word, then from arguments passed into instance from user input
			

Testing
		Rspec File
			Does word get hidden?
			Does hidden word get displayed?
			Does a found letter display amongst hidden letters?
			Does round count equal guess count?
=end



class Hangman
	attr_reader :game_word, :end_count, :round_count, :hangman_word, :game_word, :guesses, :matched_guesses
# initializes with passed word, everything loads up in order to begin game
	def initialize(hangman_word)
		@hangman_word = hangman_word
		@end_count = hangman_word.length
		@game_word = hangman_word.chars.map do |char| 
		  if char.match(/["a-z"]/)
		    char = "_"
		  else char = char
		  end
		end.join
		@round_count = 0
		@guesses = []
		@matched_guesses = []
	end
# user passes a letter as an argument, the hangman word is searched, if matched, it displays hidden word with that letter revealed
	def guess_letter(guess)
		guess = guess[0]
		if @hangman_word.include?(guess)
			(@hangman_word.size).times do |index|
				if @hangman_word[index] == guess
					@game_word[index] = guess
				end
			end
		end# below, the arrays of guessed letters are updated, and normalized to be unique, and/or not containing the hangman words letters
		@guesses << guess
		@matched_guesses = @guesses - @hangman_word.chars 
		@round_count = @matched_guesses.uniq.length
		@game_word
	end
# this is the display of the hangedman according to the percentage remaining of guesses
	def display_hangedman
    remains = @round_count.to_f / @end_count.to_f

    hangedman = "]===== x =\n       :\n       :\n"
# it is a single string shot through by line breaks. Each step in the tree adds more parts to the hanged man
		if remains >= (0.2)
			hangedman += "       @\n       |\n"
			if remains >= (0.4)
				hangedman = "]===== x =\n       :\n       :\n       @\n      -|"
				if remains >= (0.6)
					hangedman += "-\n"
					if remains >= (0.8)
						hangedman += "       =\n      /"
						if remains >= 1
							hangedman += " |"
						end
					end
				end
			end
		end
		puts hangedman

		puts "\n\n________________________________"
	end
end


# the game method using the class hangman, each hangman class is a game in and of itself, this method creates a game object and modifies, or exits
def new_game
		puts "Hangman: Please input word to play (Hide the screen!)"

		nw_gm = Hangman.new(gets.chomp)
		puts "\n" * 20 

		until nw_gm.end_count == nw_gm.round_count
			nw_gm.display_hangedman
			puts "\n" * 3
			p nw_gm.game_word
			puts "\n" 
			puts "Player, guess a letter!"
			puts "(or type 'exit')"


		guess_input = gets.chomp
		nw_gm.guess_letter(guess_input)
			if guess_input == "exit"
				break end
			if nw_gm.game_word == nw_gm.hangman_word
				puts "\n" *5
				puts "HOLY CRAP THAT WAS AMAZING\n YOU WIN!"
				break
			elsif (nw_gm.game_word != nw_gm.hangman_word) && (nw_gm.end_count == nw_gm.round_count)
				puts "\n" *3
				puts "\nSo sorry, you ran out of guesses..\n I guess you aren't good enough\n\n----------Game Over----------\n\n"
				nw_gm.display_hangedman
				break
			else 
				puts "\n" * 20
				puts
				puts "You have #{nw_gm.end_count-nw_gm.round_count} guesses left.\n You have guessed '#{nw_gm.guesses.uniq.join('')}'."
			end
		end
end


def user_interface
puts "Hello, welcome to Hangman"
	puts "This is a game for two or more players."
	puts "The Hangman will input a word.\n The other players will have the chance to guess that word letter by letter,\n the game ends when the number of guesses is reached,\n or when the word is correctly guessed."
	puts "If you would like to play, please input 'begin'"

	start = gets.chomp.downcase
	keep_playing = "y"

	if start[0] == "b" 
		
		until keep_playing[0].downcase == "n"
			new_game 
			puts "Would you like to play again?"
			keep_playing = gets.chomp
		end

	else 
		puts "\nGoodbye!"
	end
end


user_interface



















