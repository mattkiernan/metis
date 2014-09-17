class LockerEvent

	def initialize(lockers, students)
		@lockers = lockers
		@students = students
		@locker_number = lockers[:locker_number]
		@locker_state = lockers[:locker_state]
	end

	def run
		@students.each do |student|
			@lockers.each do |locker|
				if student % @locker_number == 0
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

students = []
students << (1..100).each {|student_number|	puts student_number}

lockers = []
lockers << 100.times {|locker| {locker_number: locker, locker_state: "closed"}}


locker_event = LockerEvent.new(lockers, students)
locker_event.run
