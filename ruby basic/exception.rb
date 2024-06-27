# ============================================ exception ================================================
# def raise_exception
#   puts 'I am before the raise.'
#   raise 'oops! An error has occured'
#   puts 'I am after the raise'
# end
# raise_exception


puts "============================================ Handling an Exception =============================================="

def raise_and_rescue
  begin
    puts 'Before the raise.'
    raise
    puts 'After the raise.'
  rescue
    puts 'Code rescued.'
  end
  puts 'After the begin block.'
end
raise_and_rescue


puts "============================================ Exception object =============================================="
begin
  raise 10/0
rescue ZeroDivisionError => e
  puts "Exception Class: #{ e.class.name }"
  puts "Exception Message: #{ e.message }"
  puts "Exception Backtrace: #{ e.backtrace }"
end

puts "hello"

puts "============================================ Exception using retry statement =============================================="
# begin
#   x = Dir.mkdir "are"
#   if x
#     puts "Directory created"
#   end
# rescue
#   y = "newDir"
#   retry
# end

puts "============================================ Exception using ensure statement =============================================="
begin
  raise 'Exception'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "The ensure code will always run"
end


puts "============================================ Exception using else statement =============================================="
begin
  # raise 'A test exception.'
  puts "no exception is raised"
  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
  else
    puts "else code will be executed as no exception is raised."
  ensure
    puts "ensure code will run"
end


print "\n============================================ Exception Catch and throw ==============================================\n"
def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  for i in 10..20
    puts i
  end
  name = promptAndGet("Name: ")
  age = promptAndGet("Occupation: ")
  # ..
  # process information
end


# =========================================================================
def noNegativeNumbers (number)
    throw :negativeNumberError if number < 0
    puts "Your number is positive!"
end

catch :negativeNumberError do
  noNegativeNumbers(5)
  noNegativeNumbers(50) #exits catch block here
  noNegativeNumbers(3)
end

# ==========================================================================

def catch_and_throw(value)
  puts value
  a = readline.chomp
  throw :value_e if a === "!"
  return a
end

catch :value_e do
  number = catch_and_throw("Enter Number: ")
end
