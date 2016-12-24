=begin

Hangman
	One user (hangman) enters a word or phrase. 
		Take that phrase and create a string, each letter represented with '_'
		Take the length. This is the number of guesses allowed.
		Display the hidden word ('_____')
		Switch to the next user, (the player)
	The next user(player) tries to guess that word by inputting letters.
		Begin new round, round count compared to guess count.
			Display updated word ' _ _ _ _ _ '
			Take guess letter as an input
			search the secret word for that letter,
			if letter is found, display that index position
				(The secret will be a new string every round.)
			have number of guesses += 1
	End the game
		If word is guessed (if secret_word == guessed_word) at any point, player wins
			Display nice victory message 
			Display number of guesses
		If word is not guessed when round count == guess count, hangman wins
			Display taunting message in favor of hangman
		Inquire about playing another round. 

Create a hangman class
		Each class object will be an instance of the game
			Initialization
				@hangman_word passed as arg.
				@game_word		read/write
				@round_count	read
				@guess_count	read/write
			The game information will be
				hangman_word - the word to be guessed, taken at the start
				game_word - hangman word in '_____', until round count or equals hangman_word
				round_count - length of hangman word
				guess_count - length of guessed letters, array, repeated letters deleted
		The game will be methods inside of the class
			

Testing
		Rspec File
			Does word get hidden?
			Does hidden word get displayed?
			Does a found letter display amongst hidden letters?
			Does round count equal guess count?
=end



class Hangman
	attr_reader :game_word, :guess_count, :round_count, :hangman_word, :game_word

	def initialize(hangman_word)
		@hangman_word = hangman_word
		@guess_count = hangman_word.length
		@game_word = "_" * guess_count
		@round_count = 0
	end

	def guess_letter(guess_letter)
		if @hangman_word.include?(guess_letter)
			(@hangman_word.size).times { |index|
				if @hangman_word[index] == guess_letter
					@game_word[index] = guess_letter
				end
			}
		end
		@game_word
	end

end


































