require_relative 'hangman'

describe Hangman do
	let (:game) { Hangman.new("unicorn") }

	it "creates answer array upon initialization" do
		expect(game.answer).to eq ["u","n","i","c","o","r","n"]
	end

	it "creates number of guesses based on answer length" do
		expect(game.remaining).to eq 13
	end

	it "create guess array based on answer" do
		expect(game.create_guess).to eq ["_","_","_","_","_","_","_"]
	end

	it "determine if letter is in answer" do
		expect(game.check_guess("i")).to eq true
	end

	it "add letter to guess array" do
		game.guess = ["_","_","_","_","_","_","_"]
		expect(game.add_letter("i")).to eq ["_","_","i","_","_","_","_"]
	end

	it "end the game if guess is equal to win" do
		game.guess = ["u","n","i","c","o","r","n"]
		expect(game.win_condition).to eq true
	end

end