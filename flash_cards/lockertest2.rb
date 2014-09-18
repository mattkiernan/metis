class Students

	def initialize(locker_number, locker_status)
		@locker_number = locker_number
		@locker_status = locker_status
	end

	def run(locker_number)
		(1..100).each do |student|
			if student % locker_number == 0
				toggle
			end
		end
	end

	def toggle(locker_status)
		if locker_status == "closed"
			locker_status = "open"
		else
			locker_status = "closed"
		end			
	end


	students = Students.new(1, "closed")
	students.run

end

puts @locker_number
puts @locker_status





#There is an array of lockers
#Each locker has a locker number and a state
#100 times, toggle the lockers every number of times each turn