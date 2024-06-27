for i in 1..10
  puts i
end

a=["Nemish","Prayag"]
for i in a do
  puts i
end


puts "\n==================================== while loop ===============================\n"
i=1
while i<5
  puts i
  i+=1
end

puts "\n==================================== do while loop ===============================\n"

loop do
  puts "hello"
  j = gets.chomp.to_i
  break if j>5
end
puts "\n==================================== until loop ===============================\n"

k=10
until k==0
  puts k
  k-=1
end

puts "\n==================================== break loop ===============================\n"

j=0
while j<10
  if j==7
    break
  end
  puts j
  j+=1
end
puts "\n==================================== next loop ===============================\n"
for j in 1..10
  if j%2==0
    next
  end
puts j
end

puts "\n==================================== redo loop ===============================\n"

for i in 1..5
  puts i
  redo if i==6
end


i=0
while i<5
  puts i
  i+=1
  # redo if i==5
end
