puts "hello ruby!!"

puts("==================== Unary Operator ======================")
puts("~5 = ",~5)
puts("~-5 = ",~-5)
puts("!true = ",!true)
puts("!false = ",!false)

puts("================= Arithmatic operator ====================")
puts("add operator")
puts(10 + 20)
puts("subtract operator")
puts(35 - 15)
puts("multiply operator")
puts(4 * 8)
puts("division operator")
puts(25 / 5)
puts("exponential operator")
puts(5 ** 2)
puts("modulo operator")
puts(25 % 4)

puts("================= Bitwise operator ====================")
puts("AND operator")
puts(10 & 20)
puts("OR operator")
puts(35 | 15)
puts("XOR operator")
puts(4 ^ 8)
puts("Complement operator")
puts( ~ 20)
puts("Left shift operator")
puts(35 << 2)
puts("Right shift operator")
puts(4 >> 1)

puts("================= Logical operator ====================")
puts("&& operator")
puts(10 && 20)
puts("|| operator")
puts(35 || 15)

puts("================= Arithmatic operator ====================")
puts("Ternary operator")
(23>20)?puts("23 is greter"):puts("23 is lesser")

puts("================= Assignment operator ====================")
puts("= += -= /= %= *= **= operator")

puts("================= Comparison operator ====================")
puts(".eql")
puts("10".eql?("10"))
puts("equal? operator")
puts(35.equal? "35")

puts("===================== Range operator =====================")
puts((1..5).to_a())
puts((1...5).to_a())

class States
  @@no_of_states=0
  def initialize(name)
    @states_name=name
    @@no_of_states += 1
  end
  def display()
    puts "State name #@states_name"
  end
  def total_no_of_states()
    puts "Total number of states written: #@@no_of_states"
  end
end

# Create Objects
first=States.new("Assam")
second=States.new("Meghalaya")
third=States.new("Maharashtra")
fourth=States.new("Pondicherry")

# Call Methods class variable
first.total_no_of_states()
second.total_no_of_states()
third.total_no_of_states()
fourth.total_no_of_states()

# Call Methods instance variable
first.display()
second.display()
third.display()
fourth.display()


$global_var = "GLOgvfdbdBAL"
class One
  def display
    puts "Global variable in One is #$global_var"
  end
end
class Two
  def display
  puts "Global variable in Two is #$global_var"
  end
end

oneobj = One.new
oneobj.display
twoobj = Two.new
twoobj.display


puts 8**0.5



# t = gets.strip.to_i
# for a0 in (0..t-1)
#     n = gets.strip.to_i
#     i,sum = 0,0
#     n1,n2=0,1
#     n3=n1+n2
#     while n>i
#         n1,n2=n2,n3
#         n3=n1+n2
#         sum+=n3 if n3%2==0 and n3<n
#         i+=1
#     end
#     puts sum
# end


# def prime?(n)
#   !(2...n).any? {|i| n%i == 0}
# end
# t = gets.strip.to_i
# for a0 in (0..t-1)
#   n = gets.strip.to_i
#   max_prime = 2
#   (2...n).each do |i|
#     if n%i==0 and prime? i
#       max_prime = i
#     end
#   end
#   puts max_prime
# end

# for i in (0..gets.to_i)
#     n = gets.to_i
#     sum=0
#     fact = (1..n).inject(:*)
#     while fact>0
#         temp = fact%10
#         sum += temp
#         fact /=10
#         puts "sum #{sum}"
#     end
#     puts sum

# end


require 'json'
require 'stringio'


def miniMaxSum(arr)
    # Write your code here
    arr = arr.sort
    puts arr
    print arr.sum,arr.first,arr.last
    print "#{(arr.sum-arr.last)} #{(arr.sum-arr[0])}"

end

arr = gets.rstrip.split.map(&:to_i)

