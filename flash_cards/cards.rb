class Card
  def initialize(front_and_back)
    @front = front_and_back[:front]
    @back = front_and_back[:back]
    @user_guess
  end

def play
		puts "The front of the card is #{@front}."
		print "Your guess: "
		@user_guess = gets.chomp
		if correct?
			tell_user_correct
		else
			tell_user_incorrect
		end
	end

	def tell_user_correct
		puts "You are correct!"
	end

	def tell_user_incorrect
		puts "You are incorrect. The correct answer is #{@back}"
	end

	def correct?
		@back == @user_guess
	end

end