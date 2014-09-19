class LockerEvent
	NUMBER_OF_LOCKERS = 100

	def initialize
		@students = (1..100)
		@locker_numbers = (1..100)
		@lockers = NUMBER_OF_LOCKERS.times.map do
			lockers = "closed"
		end
	end

	def run
		@students.each do |student_number|
			@locker_numbers.each do |locker_number|
				if locker_number % student_number == 0
					toggle(locker_number)
				end
			end
		end
	end

	def toggle(locker_number)
		if @lockers[locker_number-1] == "closed"
			@lockers[locker_number-1] = "open"
		else
			@lockers[locker_number-1] = "closed"
		end			
	end

	def display_lockers
		@lockers.each_with_index do |locker_state, number|
      		puts "#{number+1} #{locker_state}"
      	end
    end

end


locker_event = LockerEvent.new
locker_event.run
locker_event.display_lockers




