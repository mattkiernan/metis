class Deck

	def initialize(name)
		@name = name
	end

	attr_reader :name
end

class FlashCardGame

	def play
		loop do
			show_decks
			deck = ask_user_which_deck
			if deck == ""
				puts "Exiting"
				break
			else
				puts "You chose #{deck}"
				if deck == "Spanish"
					spanish_deck
				else
					puts "Please chose another deck"
				end
			end
		end
	end

	def ask_user_which_deck
		puts "Which deck would you like to use?"
		deck = gets.chomp
		deck
	end

	def spanish_deck
		puts "how do you speak spanish?"
		answer = "Espanol"
		guess = gets.chomp
		if correct?(answer, guess)
			puts "You are correct!"
		else
			puts "You are incorrect."
		end
	end

	def correct?(answer, guess)
		answer == guess
	end

	def show_decks
		puts "You can choose from the following decks: "
		decks.each {|deck| puts deck.name}
	end

end

decks = []

deck1 = Deck.new("Spanish")
deck2 = Deck.new("Japaneese")
decks.push(deck1,deck2)

flash_card_game = FlashCardGame.new
flash_card_game.play