require "CSV"

class Database

	def initialize(file_name)
		@database = Hash.new {|artist, track_name| artist[track_name]=[]}
		@file_name = file_name
	end

	def populate_database
		CSV.foreach(@file_name, {headers:true}).map do |row|
			artist = row["Artist"]
			track_name = row["Name"]
			push_to_database(artist, track_name)
		end
	end

	def push_to_database(artist, track_name)
		@database["Artist"] << artist
		@database["Name"] << track_name
	end

puts @database

end

database = Database.new("music.csv")
database.populate_database