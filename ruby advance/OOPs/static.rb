# Ruby program to demonstrate Static Method
class Geeks
	#class method
	@@geek_count = 0
	# defining instance method
	def incrementGeek
		@@geek_count += 1
	end

	# defining class method
	def self.getCount
		return @@geek_count
	end
end

# creating objects of class Geeks
g1 = Geeks.new
g1.incrementGeek()
g2 = Geeks.new
g2.incrementGeek()
g3 = Geeks.new
g3.incrementGeek()
g4 = Geeks.new
g4.incrementGeek()

# calling class method
puts "Total Number of Geeks = #{Geeks.getCount()}"
