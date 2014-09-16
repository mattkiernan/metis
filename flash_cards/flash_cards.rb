require "./deck"

class FlashCardGame

	def initialize(decks)
		@decks = decks
	end

	def play
		loop do
			show_user_decks
			deck = ask_user_which_deck
			if deck == ""
				puts "Exiting..."
				break
			else
				puts "You chose #{deck}"
			end
		end
	end

	def ask_user_which_deck
		print "Which deck would you like to use? "
		user_selection = gets.chomp
		user_selection
	end

	def show_user_decks
		@decks.each {|deck| puts deck.name}
	end

end

decks = []

deck1 = Deck.new("Spanish")
deck2 = Deck.new("English")
decks.push(deck1,deck2)

flash_card_game = FlashCardGame.new(decks)
flash_card_game.play



#create empty decks array
#create new english deck & new spanish deck & add both to decks array
#create game with decks
