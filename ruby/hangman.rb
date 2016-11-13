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
	attr_reader :answer, :remaining
	attr_accessor :player_wins, :guess

	def initialize(answer)
		@answer = answer.split('')
		@remaining = answer.length + 6
		@player_wins = false
		@guess = []
	end

	def create_guess
		@answer.length.times do
			@guess << "_"			
		end
		return @guess
	end

	def check_guess(letter)
		if answer.include?(letter)
			return true
			add_letter(letter)
		else
			return false
		end
	end

	def add_letter(letter)
		i = 0
		until i == @answer.length
			if @answer[i] == letter
				guess[i] = letter
			else
				guess[i] = guess[i]
			end
			i += 1
		end
		return @guess
	end

	def win_condition
		if @answer == @guess
			@player_wins = true
		end
		return @player_wins
	end

end

# Driver code for game


