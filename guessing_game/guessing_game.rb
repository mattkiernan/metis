require "./round"

class GuessingGame
  NUMBER_OF_ROUNDS = 3
  
  def play
    puts "Hello, welcome to my game."

    NUMBER_OF_ROUNDS.times do 
      round = Round.new
      round.play   
    end
  end

end

guessing_game = GuessingGame.new

guessing_game.play
