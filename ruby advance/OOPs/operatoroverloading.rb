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
puts rat1 ** 4,"===================="



class Box
  def initialize(w,h)     # Initialize the width and height
    @width,@height = w, h
  end

  def +(other)       # Define + to do vector addition
    Box.new(@width + other.width, @height + other.height)
  end

  def -@           # Define unary minus to negate width and height
    Box.new(-@width, -@height)
  end

   def *(scalar)           # To perform scalar multiplication
    Box.new(@width*scalar, @height*scalar)
  end
end

b1 = Box.new(20,40)
b2 = Box.new(30,60)
puts b1+b2
