class Gabe
	
	def initialize(key, value)
		@key = key
		@value = value
	end

	attr_reader :key
	attr_reader :value

	def value=(new_value)
		@value = new_value
	end

end


gabe = Gabe.new("Age", 26)

puts gabe.value 

gabe.value = 27

puts gabe.value
