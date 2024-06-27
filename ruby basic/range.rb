puts (-5..-1).to_a
puts (-5...-1).to_a
puts ('a'..'e').to_a
puts ('a'...'e').to_a



puts "\n========================== Ranges as sequence ========================="
range = (0..7).to_a
puts range
puts range.include?(3)
ans = range.min
puts "Minimum value is #{ans}"

ans = range.max
puts "Maximum value is #{ans}"

ans = range.reject {|i| i < 5 }
puts "Rejected values are #{ans}"

range.each do |digit|
  puts "In Loop #{digit}"
end


puts "\n========================== Ranges as conditions ========================="
budget = 50000

watch = case budget
  when 100..1000 then "Local"
  when 1000..10000 then "Titan"
  when 5000..30000 then "Fossil"
  when 30000..100000 then "Rolex"
  else "No stock"
end

puts watch


puts "\n========================= Ranges as Intervals ============================="
if (('a'..'z') === 'aeiou' and ('A'..'Z') === 'AEIOU')
  puts "v lies in the above range"
end

if (60 in (50..90))
  puts "60 lies in the above range"
end


# puts (1..100).to_a.reverse
