class LockerEvent

	def initialize(lockers)
		@lockers = lockers
	end

	def run
		(1..100).each do |student|
			@lockers.each do |locker|
				if student % locker == 0
					toggle(@locker_state)
				end
			end
		end
	end

	def toggle(locker_state)
		if locker_state == "closed"
			locker_state = "open"
		else
			locker_state = "closed"
		end			
	end
end

lockers = []
100.times {lockers << "closed"}


locker_event = LockerEvent.new(lockers)
locker_event.run
