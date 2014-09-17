class Card

	def initialize(front_and_back)
		@front = front_and_back[:front]
		@back = front_and_back[:back]
	end

	def play
		puts "The front of the card is #{@front}. The back of the card is #{@back}."
	end

end

