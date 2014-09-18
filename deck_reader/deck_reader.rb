require "./cards"
require "./decks"

class DeckReader

	def initialize(file_name)
		@file = File.open(file_name, "r")
		@number_of_decks = get_file_string.to_i
	end

	def get_decks
		@number_of_decks.times.map do
			read_deck
		end
	end

	def read_deck
		deck_name = get_file_string
		number_of_cards = get_file_string.to_i
		cards = number_of_cards.times.map do
			read_card
		end
		Deck.new({name: deck_name, cards: cards})
	end

	def read_card
		front = get_file_string
		back = get_file_string
		Card.new({front: front, back: back})
	end

	def get_file_string
		@file.gets.chomp
	end

end

deck_reader = DeckReader.new("decks.txt")
decks = deck_reader.get_decks
puts decks.inspect