class Students

	attr_reader :students

	def initialize
		students = []
		@students = students
	end

	students << (1..100).each {|student_number|	puts student_number}
end