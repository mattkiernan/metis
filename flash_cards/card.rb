class Card

	def initialize(front, back)
		@front = front
		@back = back
	end

	def play
		puts "The front of the card is #{@front}. The back of the card is #{@back}."
	end

end

