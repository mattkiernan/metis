require "./deck"

class FlashCardGame

	def initialize(decks)
		@decks = decks
	end

	def play
		loop do
			show_user_decks
			requested_deck_name = ask_user_which_deck
			if requested_deck_name == ""
				puts "Exiting..."
				break
			else
				deck = find_deck(requested_deck_name)
				if deck
					puts "We'll play #{deck.name}"
					deck.play
				else
					puts "Please chose a correct deck"			
				end
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

	def find_deck(requested_deck_name)
		@decks.find {|deck| deck.name == requested_deck_name} 
	end

end

decks = []
spanish_cards = []
japanese_cards = []

spanish_cards << Card.new({front: "Perro", back: "Dog"})
spanish_cards << Card.new({front: "Gato", back: "Cat"})
japanese_cards << Card.new({front: "Inu", back: "Dog"})
japanese_cards << Card.new({front: "Neko", back: "Cat"})

decks << Deck.new({name: "Spanish", cards: spanish_cards})
decks << Deck.new({name: "Japanese", cards: japanese_cards})

flash_card_game = FlashCardGame.new(decks)
flash_card_game.play



#create a new cards class

#initialize to tell Card it has a front & back, store in instance variables


#def play

#puts the front & back of the card in string

#we need to add cards to deck class initialize

#need to define play, for each card, we need to play the card and cards.each is an instance variable

#remember to require the card class whereeer you use it


#add type of cards as argument to decks class
