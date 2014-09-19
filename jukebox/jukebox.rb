require "./database"

class Jukebox

	def initialize
		@database
		@user_input
	end

	def welcome_user
		puts "Welcome to the Jukebox. Press <Enter> at any time to exit. Launching database..."
		launch_database
	end

	def launch_database
		database = Database.new("music.csv")
		@database = database
		@database.populate_database
		ask_for_artist
	end

	def ask_for_artist
		print "Query >>"
		@user_input = gets.chomp
		display_songs
	end

	def display_songs
		if @user_input != ""
			puts "*"*25
			puts "Songs by #{@user_input}"
			puts "*"*25
			@database.display_songs(@user_input)
			ask_for_artist
		else
			puts "Exiting..."
		end
	end

end

jukebox = Jukebox.new
jukebox.welcome_user