require "csv"

class Database

	def initialize(file_name)
		@file_name = file_name
		@artists = {}
	end

	def populate_database
		CSV.foreach(@file_name, {headers: true}) do |row|
			if @artists[row["Artist"]]
				@artists[row["Artist"]] << row["Name"]
			else
				@artists[row["Artist"]] = [row["Name"]]
			end
		end
		puts @artists
	end

end

database = Database.new("music.csv")
database.populate_database