class FlashCardGame

	def play
		loop do
			deck = ask_user_which_deck
			if deck == ""
				puts "Exiting"
				break
			else
				puts "You chose #{deck}"
			end
		end
	end

	def ask_user_which_deck
		print "Which deck would you like to use? "
		deck = gets.chomp
		deck
	end

end

flash_card_game = FlashCardGame.new
flash_card_game.play