class Musical_chairs

	def initialize
		@n
		@m
		@kids_and_chairs = {}
	end

	def get_input
		loop do
			input = gets.chomp
			if input != ""
				@n = input.slice(0, input.index(" "))
				@m = input.slice(input.index(" ")+1, input.length)
				push_to_hash
			else
				calculate
				break
			end
		end
	end

	def push_to_hash
		@kids_and_chairs[@n] = @m
	end

	def calculate
		@kids_and_chairs.each_with_index{|key, value, index| puts key value index}
	end
end

chairs = Musical_chairs.new
chairs.get_input