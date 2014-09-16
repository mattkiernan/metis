class Round

	NUMBER_OF_GUESSES = 2

	def initialize
		@answer = rand(1..10)
	end

	def play
		NUMBER_OF_GUESSES.times do
			puts "Please guess a number between 1 & 10."
			guess = gets.chomp
			guess = guess.to_i
			if correct?(guess)
				showTrue
				break
			else
				showFalse
				puts "New Guess! (Hint: it's #{@answer})"
			end
		end
	end

	def correct?(guess)
		guess == @answer
	end

	def showTrue
		puts "You are correct!"
	end

	def showFalse
		puts "You are incorrect."
	end 
end


