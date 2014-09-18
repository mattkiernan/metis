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




