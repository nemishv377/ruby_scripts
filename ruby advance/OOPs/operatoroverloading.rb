# Ruby program of Operator Overloading
class Tester
	attr_accessor:num

	# Initialize the num
	def initialize(num)
		@num = num
	end

	# Define + to do addition
	def +(obj)
		return self.num+obj.num
	end

	# Define * to do Multiplication
	def *(obj)
		return self.num*obj.num
	end
	def **(obj)
		return self.num**obj.num
	end
end
a = Tester.new(5)
b = Tester.new(4)
puts a,b
puts a + b
puts a * b
puts a ** b



# Ruby program for ** method

# Initialize rational number
rat1 = Rational(-4, 2)

# Prints the rational number
puts rat1 ** 4
