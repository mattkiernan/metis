require "./card"

class Deck

	def initialize(name, cards)
		@name = name
		@cards = cards
	end

	def play
		@cards.each {|card| card.play}
	end

	attr_reader :name
end