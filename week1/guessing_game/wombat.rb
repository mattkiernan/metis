class Wombat
	def initialize(name)
		@name = name
	end

	def showName
		puts @name
	end
end


wombat1 = Wombat.new("Bill")
wombat2 = Wombat.new("Ted")

wombat1.showName
wombat2.showName