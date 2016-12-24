require_relative 'hangman.rb'

describe Hangman do
	let(:hangman) {Hangman.new("testing")}

	it "Changes hangman_word to Game_word('___')" do
		expect(hangman.game_word).to eq "_______"
	end


	it "reveals correct guess letter" do
		expect(hangman.guess_letter("t")).to eq "t__t___"
	end
end