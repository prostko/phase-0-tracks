require_relative 'hangman.rb'

describe Hangman do
	let(:hangman) {Hangman.new("testing")}

	it "Changes hangman_word to Game_word('___')" do
		expect(hangman.game_word).to eq "_______"
	end


	it "reveals correct guess letter" do
		expect(hangman.guess_letter("t")).to eq "t__t___"
	end

	it "sets round count equal to number of unique guesses made" do
		hangman.guess_letter("t")
		hangman.guess_letter("t")
		hangman.guess_letter("e")
		expect(hangman.round_count).to eq 2
	end

	it "keeps a history of guesses made by the user" do
		hangman.guess_letter("t")
		hangman.guess_letter("t")
		hangman.guess_letter("e")
		expect(hangman.guesses.uniq.join('')).to eq "te"
	end
end