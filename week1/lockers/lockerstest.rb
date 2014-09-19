class Locker

	def initialize(number_and_status)
		@number = number_and_status[:number]
		@status = number_and_status[:status]
	end

end

lockers = []

 (1..100).each do |locker|
	lockers << Locker.new({number: locker, status: "closed"})
end


puts lockers[5]