require "./databse"

class Jukebox

	def initialize
		@database = launch_database
		@user_input
	end

	welcome_user

	ask_for_artist

	find_artist

	display_song

	def launch_database
		database = Database.new
		database.populate_database
	end

	def welcome_user
		puts "Welcome to the Jukebox."
	end

	def ask_for_artist
		print "Query >>"
		user_input = gets.chomp
		find_artist(user_input)
	end

	def find_artist(user_input)
		find.each do |artist|
			if user_input == artist
				display_song
			end
		end
	end

	def display_song
		puts @database[user_input]
	end

end