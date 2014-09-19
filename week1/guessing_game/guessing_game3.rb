require "./round3"

class GuessingGame

	NUMBER_OF_ROUNDS = 3

	def play
		puts "Welome to the Guessing Game!"

		NUMBER_OF_ROUNDS.times do 
			round = Round.new
			round.play
		end
	end
end

guessing_game = GuessingGame.new

guessing_game.play
