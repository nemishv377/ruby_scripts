require 'date'
puts "======================= dates method= ==========================="
puts "Date.new(2017,4,3)                         #{Date.new(2017,4,3)}"
puts "Date.jd(2451877)                           #{Date.jd(2451877)}"
puts "Date.ordinal(2017,3)                       #{Date.ordinal(2017,3)}"
puts "Date.commercial(2017,5,6)                  #{Date.commercial(2017,5,6)}"
puts "Date.parse('2017-02-03)                    #{Date.parse('2017-02-03')}"
puts "Date.strptime('03-02-2017, '%d-%m-%Y')     #{Date.strptime('03-02-2017', '%d-%m-%Y')}"
puts "Time.new(2017,10,8)                        #{Time.new(2017,10,8).to_date}"




d = Date.parse('4th Mar 2017')

puts d.year
puts d.mon
puts d.mday
puts d.wday
puts d += 1
puts d.strftime('%a %d %b %Y')


puts "========================================= date time ==========================="

puts DateTime.new(2017,3,4,5,6,7)

d = DateTime.parse('4th Mar 2017 02:37:05+05:40')

puts d.hour
puts d.min
puts d.sec
puts d.offset
puts d.zone
puts d += Rational('1.0')

puts d = d.new_offset('+05:00')

puts d.strftime('%I:%M:%S %p')

puts d > DateTime.new(2000)

puts " ===================================== time instance ==========================="
puts Time.new
puts Time.new(2017, 3)
puts Time.new(2017, 3, 4)
puts Time.new(2017, 3, 4, 6, 5, 5, "+05:00")
time = Time.new


puts "========================= Time with gm, utc and local functions"
puts Time.local(2017, 2, 5)

puts Time.local(2017, 2, 5, 4, 30)

puts Time.utc(2017, 2, 5, 4, 30)

puts Time.gm(2017, 2, 5, 4, 30, 36)


puts "======================= Working with an instance of time"
t = Time.new(1991, 07, 5, 9, 15, 33, "+09:00")
puts t.inspect
puts t.friday? #=> true
puts t.year #=> 1991
puts t.dst? #=> false
puts t + (60*60*24*365) #=> 1992-07-04 09:15:33 +0900
puts t.to_i #=> 730522800

t1 = Time.new(2017)
t2 = Time.new(2015)

puts t1 == t2 #=> false
puts t1 == t1 #=> true
puts t1 <  t2 #=> false
puts t1 >  t2 #=> true

puts Time.new(2019,10,2).between?(t1, t2) #=> false

puts "=================================== Timezones and daylight savings time
"
puts time.zone
puts time.utc_offset
puts time.zone
puts time.isdst
puts time.utc?
puts time.localtime
puts time.gmtime
puts time.getlocal
puts time.getutc
