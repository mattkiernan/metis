class Lockers

	attr_reader :locker_number
	attr_reader :locker_state

	def initialize(locker_number_and_state)
		@locker_number = lockers[:locker_number]
		@locker_state = lockers[:locker_state]
	end

end