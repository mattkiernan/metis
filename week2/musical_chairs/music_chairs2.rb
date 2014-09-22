class Musical_chairs

	def initialize
		@chairs_and_children = []
		@game = []
		@round = 1
	end

	def get_input
		loop do
			input = gets.chomp
			if input != ""
				@chairs_and_children = [@round, input.slice(0, input.index(" ")), input.slice(input.index(" ")+1, input.length)]
				@round = @round + 1
				push_to_array
			else
				calculate
				break
			end
		end
	end

	def push_to_array
		@game << @chairs_and_children
	end

	def calculate
		@game.each {|round| puts "Round ##{round[0]}: #{round[1].to_i - round[2].to_i} children eliminated."}
	end
end

chairs = Musical_chairs.new
chairs.get_input