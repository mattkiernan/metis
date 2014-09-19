require "csv"

class Database

	def initialize(file_name)
		@file_name = file_name
		@artists = {}
		@results
	end

	def populate_database
		CSV.foreach(@file_name, {headers: true}) do |row|
			if @artists[row["Artist"]]
				@artists[row["Artist"]] << row["Name"]
			else
				@artists[row["Artist"]] = [row["Name"]]
			end
		end
	end

	def display_songs(user_input)
		@results = @artists[user_input]
		@results.sort!
		puts @results
	end

end