class LockerEvent

	def initialize(lockers)
		@lockers = lockers
	end

	def run
		(1..100).each do |student_number|
			(1..100).each do |locker_number|
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


lockers = []
100.times {lockers << "closed"}


locker_event = LockerEvent.new(lockers)
locker_event.run
locker_event.display_lockers




