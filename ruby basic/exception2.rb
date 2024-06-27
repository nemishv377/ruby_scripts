# Ruby program to illustrate
# use of raise statement

begin

	puts 'This is Before Exception Arise!'

	# using raise to create an exception
	raise 'Exception Created!'

  rescue
    puts "helllo"
	puts 'After Exception'
end

puts "=================================================================================================================="
#!/usr/bin/ruby
puts "type-1\n"
begin

# re-raises the current exception
# (RuntimeError as they are no current exception)
raise
rescue
puts 'Tony got rescued.'
end
puts 'Tony returned safely'

puts "\ntype-2\n"
begin

# sets this message to the string in the superclass,
# this exception will be given top priority in the call stack.
raise 'Quill got rescued.'
puts 'quill' # won't execute
rescue StandardError => e
puts e.message
end
puts 'Quill is back to ship.'

puts "\ntype-3\n"
begin
# uses the first argument to create an exception
# and then sets the message to the second argument.
raise StandardError.new 'Groot got rescued.'
rescue StandardError => e # e=>object

# prints the attached string message.
puts e.message
end

puts "\ntype-4\n"
begin
a = 30
b = 0
# here a conditional statement is added
# to execute only if the statement is true

	# raises the exception only if the condition is true
	raise ZeroDivisionError.new 'b should not be 0' if b == 0
	puts a/b
rescue StandardError => e
puts e.message
end

puts
begin
a = 30

# changing the b value, it passes the raise and executes further
b = 2

	# raises the exception only if the condition is true
	raise ZeroDivisionError.new 'b should not be 0' if b == 0
	print "a/b = ", a / b,""
rescue StandardError => e
puts e.message
end





puts "=============Check out the difference between the Runtime and Raised Exception.  =========="
puts "Raised Exception:\n"
begin
a = 30
b = 0

	# raises the exception only if the condition is true
	raise ZeroDivisionError.new 'b should not be 0' if b == 0
	print "a/b = ", (1 + 2) * (a / b)
rescue ZeroDivisionError => e
puts e.message

# prints the error stack, but a raised exception has zero stack
puts "fgfv #{e.backtrace}"
end

puts "\nRuntime Exception:============\n"
begin
a = 30
b = 0
x=(1 + 2) * (a / b)

	# raises the exception only if the condition is true
	raise ZeroDivisionError.new 'b should not be 0' if b == 0
	print "a/b = ", (1 + 2) * (a / b)
rescue ZeroDivisionError => e

# prints the message=>(divided by 0)
# from ZeroDivisionError class
puts e.message
puts e.backtrace
end
