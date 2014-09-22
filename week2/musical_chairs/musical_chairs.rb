class Musical_chairs

	def initialize
		@number_of_children
		@number_of_chairs
		@round = 1
		@chairs_and_children = []
		@game = {}
	end

	def get_input
		loop do
			input = gets.chomp
			if input != ""
				@number_of_children = input.slice(0, input.index(" "))
				@number_of_chairs = input.slice(input.index(" ")+1, input.length)
				push_to_hash
			else
				calculate
				break
			end
		end
	end

	def push_to_hash
		@game[@round] = [@number_of_children, @number_of_chairs]
		@round = @round +1
	end

	def calculate
		puts @game
	end
end

chairs = Musical_chairs.new
chairs.get_input