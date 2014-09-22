class Hash

	def initialize
		@names_and_ages = {}
		@user_input
	end

	def get_input
		puts "Please enter a person's name, followed by a single space and their age."
        puts "Use the return key to enter additional names and ages."
        puts "When done, hit return once more."
		loop do
			user_input = gets.chomp
			@user_input = user_input
				if @user_input == "" && @names_and_ages.length == 0
					puts "Please enter some names and ages."
				elsif @user_input == "" 	
					calculate
					break
				else
					name = @user_input.slice(0..(@user_input.index(" ")-1))
      				age = @user_input.slice(@user_input.index(" ")+1, @user_input.length)
					@names_and_ages[name] = age.to_i
				end
			end
		end

	def calculate
		oldest = @names_and_ages.key(@names_and_ages.values.max)
		youngest = @names_and_ages.key(@names_and_ages.values.min)
		puts "The youngest person is #{youngest}. The oldest person is #{oldest}."
	end

end

hash = Hash.new

hash.get_input