require_relative 'hangman.rb'

describe Hangman do
	let(:hangman) {Hangman.new("testing+testing")}

	it "Changes hangman_word to Game_word('___')" do
		expect(hangman.game_word).to eq "_______+_______"
	end

	it "takes a phrase, leaving anyhting that isnt a letter" do
	end

	it "reveals correct guess letter" do
		expect(hangman.guess_letter("t")).to eq "t__t___+t__t___"
	end

	it "sets round count equal to number of unique guesses made" do
		hangman.guess_letter("x")
		hangman.guess_letter("x")
		hangman.guess_letter("s")
		expect(hangman.round_count).to eq 1
	end

	it "keeps a history of guesses made by the user" do
		hangman.guess_letter("x")
		hangman.guess_letter("x")
		hangman.guess_letter("e")
		expect(hangman.guesses.uniq.join('')).to eq "xe"
	end
end