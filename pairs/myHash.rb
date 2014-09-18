require "./pairs"

class MyHash

	def initialize
		@pairs = [Pair.new("Gabe", 26)] #creating an array here. It's an instance of a Pair class
	end

	def [](key) #this is a method used for reading the value of a given key

		found_pair = find_pair_with_key(key) #find the pair with the key

		if found_pair # if we find the pair...
			found_pair.value #give us the value associated with that key
		end
	end

	def []=(key, new_value) #this is a method used to write a new value, given a key
	
		found_pair = find_pair_with_key(key)

		found_pair.value = new_value

	end

	private

	def find_pair_with_key(key)
		@pairs.find do |pair| # a block is a mini method with no name.
			pair.key == key #The find method returns what its looking for. In this case, it's the full @pairs
		end
	end

end

my_hash = MyHash.new
puts my_hash["Gabe"]
my_hash["Gabe"] = "Shmabe"
puts my_hash["Gabe"]


