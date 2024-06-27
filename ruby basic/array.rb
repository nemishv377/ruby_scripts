exm = [4, 4.0, "Jose", ]
puts exm
exm = Array.new(10)
puts exm.size
puts exm.length
exm = Array("a"..."z")
puts "#{exm}"


puts "==================== Accessing values ======================"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
puts days[0]
puts days[10]
puts days[-2]
puts days[2, 3]
puts days[1..7]
puts days.at(90)
puts days.at(0)
puts days.at(-1)

puts days.fetch(10,"ooppss!!!")
# puts days.fetch(10)

puts "========================= slice ============================="
puts days.slice(2,2)


puts "====================== Adding methods ========================="
puts days.push("today")
puts days<<("tommorow")
puts days.unshift("yesterday")
puts days.insert(3,"Sat")


puts "==================== Removing method =========================="
puts days.pop
puts days.shift
puts days.delete("today")
puts days.uniq


days[days.length]="szdsGf"
puts days
