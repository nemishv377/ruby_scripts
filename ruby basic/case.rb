case gets.chomp.to_i
when 1
  puts "1"
when 2
  puts "2"
when 3
  puts "3"
when 4
  puts "4"
else
  puts "out"
end



print "Enter your day: "
day = gets.chomp
case day
when "Tuesday"
  puts 'Wear Red or Orange'
when "Wednesday"
  puts 'Wear Green'
when "Thursday"
  puts 'Wear Yellow'
when "Friday"
  puts 'Wear White'
when "Saturday"
  puts 'Wear Black'
else
  puts "Wear Any color"
end
