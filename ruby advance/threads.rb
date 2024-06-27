# def Geeks1
#   a = 0
#   while a <= 3
# 	  puts "Geeks1: #{a}"

# 	  # to pause the execution of the current
# 	  # thread for the specified time
# 	  sleep(1)

# 	  a = a + 1
#   end
# end

# def Geeks2
#   b = 0

#   while b <= 3
# 	  puts "Geeks2: #{b}"

#   	# to pause the execution of the current
# 	  # thread for the specified time
#   	sleep(0.5)

# 	  # incrementing the value of a
# 	  b = b + 1
#   end
# end

# # creating thread for first method
# x = Thread.new{Geeks1()}
# # creating thread for second method
# y= Thread.new{Geeks2()}

# # using Thread.join method to
# # wait for the first thread
# # to finish
# x.join

# # using Thread.join method to
# # wait for the second thread
# # to finish
# y.join

# puts "Process End"




# # Ruby program to illustrate
# # Thread variables

# # Global variable
# $str = "GeeksforGeeks"
# def Geeks1
# # only access by Geeks1 Thread
#   a = 0

#   while a <= 3
# 	  puts "Geeks1: #{a}"

# 	  # to pause the execution of the current
# 	  # thread for the specified time
# 	  sleep(1)
# 	  a = a + 1
#   end
#   # accessing str
#   puts "Global variable Geek1: #$str"
#   (1..3).each {|n| print n}
# end


# def Geeks2
#   b = 0

#   while b <= 3
# 	  puts "Geeks2: #{b}"

#   	# to pause the execution of the current
# 	  # thread for the specified time
# 	  sleep(0.5)

#   	# incrementing the value of a
# 	  b = b + 1
#   end
#   # accessing str
#   puts "Global variable geek2: #$str"

#   (1..3).each {|n| print n}
# end

# # creating thread for first method
# x = Thread.new{Geeks1()}

# # creating thread for second method
# y= Thread.new{Geeks2()}

# # using Thread.join method to
# # wait for the first thread
# # to finish
# x.join

# # using Thread.join method to
# # wait for the second thread
# # to finish
# y.join


# puts "Process End"




# Ruby program to illustrate
# kill Method

counter = 0

# creating new thread
x = Thread.new { loop { counter += 1 } }

# using sleep method
sleep(0.4)

# exits the thread using kill method
Thread.kill(x)

# give it time to die!
sleep(0.5)

# return false
x.alive?



# Ruby program to illustrate
# list Method

# first thread
Thread.new { sleep(100) }

# second thread
Thread.new { 10000.times {|z| z*z } }

# third thread
Thread.new { Thread.stop }

# using list method
Thread.list.each {|thr| p thr }





# Ruby program to illustrate
# stop Method

x = Thread.new { print "geeks"; Thread.stop; print "geeksforgeeks" }

# using pass method
Thread.pass

print "geeksforgeeks"

x.run
x.join


# Ruby program to illustrate
# main thread

# Create main thread
puts Thread.main
puts ""

# create new thread
a1 = Thread.new {sleep 200}
list_thread= Thread.list
list_thread.each {|t| p t }
puts "Current thread = " + Thread.current.to_s

# create new thread
a2 = Thread.new {sleep 200}
list_thread= Thread.list
list_thread.each {|t| p t }
puts "Current thread=" + Thread.current.to_s

# kill thread a1
Thread.kill(a1)

# pass execution to thread a2
Thread.pass

# kill thread a2
Thread.kill(a2)

list_thread= Thread.list
list_thread.each {|t| p t }

# exit main thread
Thread.exit
