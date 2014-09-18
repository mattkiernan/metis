require "CSV"

class Database

	def initialize
		@database = {}
	end

	def populate_database
		CSV.foreach("music.csv", {headers:true}).map do |row|
			@database = {row["Artist"] => row["Name"]}
			user_input = "Taylor Swift"
			puts @database[user_input]
		end
	end

end

database = Database.new
database.populate_database