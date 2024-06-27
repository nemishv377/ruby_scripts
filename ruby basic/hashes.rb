color = {
  "Rose" => "red",
  "Lily" => "purple",
  "Marigold" => "yellow",
  "Jasmine" => "white",
  "Rose" => "fgdf"
}
color.each do |key, value|
  puts "#{key} color is #{value}"
end


puts "\n======================== modifying hash ===================="
color["tulip"]="pink"
color.each do |key, value|
  puts "#{key} color is #{value}"
end

months = Hash.new( "month" )

puts months.keys
# puts "#{months[72]}"

puts "\n===================== Hash Methods for creation ======================= "
h=Hash["rose":"red"]
puts h

c = Hash.new()
c["safd"]="fdgdvf"
puts c

df = Hash.try_convert("dsd"=>"dds","dcdvfvd"=>"dvvdfv")
puts df


# Method	Description
# hsh==other_hash	=== Two hashes are equal if they contain same key and value pair.
# hsh[key]	=== Retrieve value from the respective key.
# hsh[key] = value	=== Associates new value to the given key.
# assoc(obj)	=== Compare obj in the hash.
# clear	Remove all key value pair from hash.
# compare_by_identity	Compare hash keys by their identity.
# compare_by_identity?	Return true if hash compare its keys by their identity.
# default(key=nil)	Return default value.
# default = obj
# Sets the default value.
# delete(key)	Delete key value pair.
# each Call block once for each key in hash.
# empty?	Return true if hash contains no key value pair.
# eql>(other)	Return true if hash and other both have same content
# fetch(key[, default])
# Return value from hash for a given key.
# flatten	Return a new array that is a one-dimensional flattening of this hash.
# has_key?(key)	Return true if given key is present in hash.
# has_value?(value)	Return true if given value is present in hash for a key.
# include?(key)	Return true if given key is present in hash.
# to_s/ inspect
# Return content of hash as string.



puts (1..5).group_by {|x| x%2}
marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
puts marks.group_by {|key,value| value<30}
puts marks

def group_by_hash hash, value
  hash.group_by do |k,v|
    v > value ? "Big" : "Small"
  end
end

marks = {"Chair" => 30, "Table" => 40, "Bed" => 60, "stool" => 20}
puts group_by_hash(marks, 30)
