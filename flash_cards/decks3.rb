class FlashCardGame

	def initialize(decks)
		@decks = decks
	end

	def play
		puts "Welcome to the game. Here are the decks you can play with: "
		show_user_available_decks
		loop do
			print "Please choose a deck >> "
			user_selection = gets.chomp
			if user_selection == ""
				puts "Exiting..."
				break
			else
				puts "You chose #{user_selection}"
			end
		end
	end

	def show_user_available_decks
		@decks.each {|deck| puts deck}
	end

end

decks = []
decks.push("Spanish", "English")

flash_card_game = FlashCardGame.new(decks)
flash_card_game.play