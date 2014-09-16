require "./round2"

class GuessingGame
	NUMBER_OF_ROUNDS = 3

	def initialize
		@total_guesses = 0
		@win_count = 0
	end

	def play
		puts "Welcome to my game"

		NUMBER_OF_ROUNDS.times do	
			round = Round.new
			round.play
			puts "You've made #{round.number_of_guesses} guesses."
			add_guesses(round.number_of_guesses)
			if round.won?
				@win_count += 1
			end
		end
		puts "Your average number of guesses was #{average_guesses}."
		puts "You won #{@win_count} times."
	end

	def add_guesses(number_of_guesses)
		@total_guesses += number_of_guesses
	end

	def average_guesses
		@total_guesses / NUMBER_OF_ROUNDS.to_f
	end


end

guessing_game = GuessingGame.new
guessing_game.play