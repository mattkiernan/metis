class Age

  def initalize
    @names_and_ages = {}
    @user_input
  end 

  def get_ages
    loop do
      puts "Enter people's names and ages followed by an empty line:"
      user_input = gets.chomp
      @user_input = user_input
     if @user_input == " "
      calculate
    else
      push_to_hash
    end
    end
  end

    def push_to_hash
      name = @user_input.slice(0..(@user_input.index(" ")-1))
      age = @user_input.slice(@user_input.index(" ")+1, @user_input.length)
      @names_and_ages = {}
      @names_and_ages[name] = age
      puts @names_and_ages
    end

    def calculate
      puts @names_and_ages
    end

end

age = Age.new
age.get_ages
