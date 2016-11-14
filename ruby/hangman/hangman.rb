# Hangman Class
# Each game will include:
# 	An answer, specified by Player 1
# 	The number of guesses remaining
# 	A status to determine if Player 2 has won
# 	Player 2's guess
# The answer will be determined when the game starts
# Player 2's guess will be created right after game starts
# Player 2 will guess a letter
# 	The number of guesses remaining will decrease by 1
# 	If the guess matches a part of the answer
# 		The letter will be added to their attempt
# 	Player 2 will see their updated guess

class Hangman
	attr_reader :remaining, :player_wins, :guess

	def initialize(answer)
		@answer = answer.split('')
		@remaining = answer.length + 6
		@player_wins = false
		@guess = []
		@letters = []
	end

	def create_guess
		@answer.length.times do
			@guess << "_"			
		end
		return @guess
	end

	def check_guess(letter)
		@remaining -= 1
		if @answer.include?(letter)
			add_letter(letter)
			return true			
		else
			return false
		end
	end

	def add_letter(letter)
		i = 0
		until i == @answer.length
			if @answer[i] == letter
				@guess[i] = letter
			else
				@guess[i] = @guess[i]
			end
			i += 1
		end	
	end

	def win_condition
		if @answer == @guess
			@player_wins = true
		end
		return @player_wins
	end

	def repeated_letter(letter)
		if !@letters.include?(letter)
			@letters << letter
		else
			@remaining += 1
		end
	end

end

# Driver code for game

puts "Enter a word for the other player to guess:"
word = gets.chomp
game = Hangman.new(word)
game.create_guess
p game.guess

until game.remaining == 0
	puts "You have #{game.remaining} guesses remaining."
	puts "Enter a letter:"
	letter = gets.chomp

	game.repeated_letter(letter)

	game.check_guess(letter)
	p game.guess

	if game.win_condition
		break
	end
end

if game.remaining == 0
	puts "You get nothing! You lose! Good day, sir!"
else
	puts "YOU WIN!"
end