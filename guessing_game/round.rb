class Round
  def initialize 
    @answer = rand(1..10)
  end

  def play
    puts "Please guess a number."
    guess = gets.chomp
    guess = guess.to_i
    puts "The answer is #{@answer}."
      if correct?(guess)
       tellUserCorrect
      else
       tellUserIncorrect
      end
  end
end

def correct?(guess)
  guess == @answer
end

def tellUserCorrect
  puts "You are correct!"
end

def tellUserIncorrect
  puts "You are incorrect!"
end

