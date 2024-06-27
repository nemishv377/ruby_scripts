# # the public access control
# class GeeksforGeeks
# 	# public method without using
# 	# public keyword
# 	def geeks_1
# 		puts "public method geeks_1 is called"
# 	end

# 	# using public keyword
# 	public
# 	def geeks_2
# 		puts "public method geeks_2 is called"
# 	end

# 	def geeks_3
# 		puts "public method geeks_3 is called"
# 		# calling geeks_1 method
# 		geeks_1
# 		# calling geeks_1 method using
# 		# self-keyword
# 		self.geeks_1
# 	end
# end

# # creating the object of
# # class GeeksforGeeks
# obj = GeeksforGeeks.new

# obj.geeks_1
# obj.geeks_2
# obj.geeks_3


puts "=================================== Private ========================================"

# the private access control
class GeeksforGeeks
	# it can't be private
	def initialize
		puts "This is the initialize Method"
    geeks_2
	end

	def geeks_1
			puts "Public geeks_1 Method"
      geeks_2
	end

	# using the private keyword to
	# declare a private method
	private
	def geeks_2
		puts "This is Private Method"
	end
end

obj = GeeksforGeeks.new
obj.geeks_1

# calling private method will give the error
# obj.geeks_2

puts "-================================= Protected ==========================================="

# the protected access control
class GeeksforGeeks
	def initialize
		# calling geeks_2 method
		geeks_2

		# calling geeks_2 method
		# using self-keyword
		self.geeks_2
	end

	def geeks_1
		puts " geeks_1 method is called"
    geeks_2
	end

	# defining the protected method using
	# protected keyword
	protected
	def geeks_2
		puts " geeks_2 method is called"
	end
end


obj = GeeksforGeeks.new

obj.geeks_1
# if you will try to call protected method
# using the object of class then it will
# give error
# obj.geeks_2


puts "================= Private ,Protected method can also inherited in ruby ======================="

# method can also be inherited
class Geeks
	def method_1
		p "Public Method of class Geeks"
	end
	# defining the protected method
	protected
	def method_2
		p "Protected Method of class Geeks"
	end
	# defining the private method
	private
	def method_3
		p "Private Method of class Geeks"
	end
end

# Sudo class inheriting Geeks class
class Sudo < Geeks
	def method_4
		p "Public Method of Sudo Class"
		# calling all three methods
		# of Geeks class
		method_1
		method_2
		method_3
	end
end

# creating an object of class Sudo
obj_sudo = Sudo.new

# calling the public method
# of class Sudo which will
# automatically call the private
# and protected method of Geeks class
obj_sudo.method_4



puts " ================ Difference of Private and Protected ============================================="
# Ruby program to demonstrate that private and protected method can't be accessed outside the class even after inheritance

class Geeks
	def method_1
		p "Public Method of class Geeks"
	end

	# defining the protected method
	protected
	def method_2
		p "Protected Method of class Geeks"
	end

	# defining the private method
	private
	def method_3
		p "Private Method of class Geeks"
	end
end

class Sudo < Geeks
	def method_4
		p "Public Method of Sudo Class"

		# calling the public method
		# of Geeks class
		method_1

		# creating object of class Sudo
		# inside the public method of
		# class Sudo
		obj_inside_sudo = Sudo.new

		# calling the protected
		# method of class Geeks
		obj_inside_sudo.method_2

		# calling the private
		# method of class Geeks
		# using an explicit receiver
		obj_inside_sudo.method_3 rescue p "You can't Access!"
    method_2
    method_3

  end
end



# creating an object of class Sudo
obj_sudo = Sudo.new

# calling the public method
# of class Sudo
obj_sudo.method_4
