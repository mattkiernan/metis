class Round

	MAX_NUMBER_OF_GUESSES = 2

	def initialize
		@answer = rand(1..10)
		@number_of_guesses = 0
		@win_count = 0
		@won = false
	end

	def play
		MAX_NUMBER_OF_GUESSES.times do
			puts "Guess a number (it's #{@answer}."
			@number_of_guesses += 1
			guess = gets.chomp
			guess = guess.to_i
			if correct?(guess)
				show_true
				@won = true
				break
			else
				show_false
				puts "---New Round!---"
			end
		end
	end

	def correct?(guess)
		guess == @answer
	end

	def won?
		@won
	end

	def number_of_guesses
		@number_of_guesses
	end

	private

	def show_true
		puts "You are correct!"
	end

	def show_false
		puts "You are incorrect! The correct answer was #{@answer}"
	end


end