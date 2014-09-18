require "./hash_pair"

class MyHash

	def initialize
		@pairs = Pair.new("Gabe", 26)
	end

	def []= (key, new_value)
		@pairs.find do |pair|
			pair == key
		end



end