msg = "This tutorial is from JavaTpoint."

puts msg["JavaTpoint"]
puts msg["tutorial"]

puts msg[0]

puts msg[7, 2]
puts msg[0..19]
puts msg[0, msg.length]
puts msg[-3]
puts msg[-1]


puts "================================= Multiline string =========================="
puts "
A
AB
ABC
ABCD"

puts %/
A
AB
ABC
ABCD/

puts <<"String"
A
AB
ABC
ABCD
String

puts "================================= Interpolation string =========================="

country = "India"
capital = "New Delhi"
aca = "#{capital} is the capital of #{country}."
puts aca


puts "==============================  Concatenating Strings ============================"
string = "This is Ruby Tutorial" + " from JavaTpoint." + " Wish you all good luck."
puts string

string = "This is Ruby Tutorial" " from JavaTpoint." " Wish you all good luck."
puts string

string = "This is Ruby Tutorial" << " from JavaTpoint." << " Wish you all good luck."
puts string

string = "This is Ruby Tutorial".concat(" from JavaTpoint.").concat(" Wish you all good luck.")
puts string



puts " =============================== freeze strings ================================="
str = "Original string"
str << " is modified "
str << "is again modified"

puts str

str.freeze

# str << "And here modification will be failed after using freeze method"



puts " =============================== Comparing strings ================================="
puts "abc" == "abc"
puts "as ab" == "ab ab"
puts "23" == "32"

puts "ttt".eql? "ttt"
puts "12".eql? "12"

puts "Java".casecmp "Java"
puts "Java".casecmp "java"
puts "Java".casecmp "ja"
