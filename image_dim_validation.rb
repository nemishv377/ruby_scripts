print "Enter minimum required length = "
l = gets.to_i
loop do
  break if 0<l and l<100
  puts "please enter between 0 to 100"
  print "Enter minimum required length = "
  l = gets.to_i
end

print "Enter number of image =  "
n = gets.to_i
loop do
  break if 0<n and n<=5
  puts "You can validate upto 5 images at a time"
  print "Enter number of image =  "
  n = gets.to_i
end

for i in (0...n)
  print "Enter Dimension for image#{i+1} : "
  w,h = gets.to_s.split
  w = w.to_i
  h = h.to_i
  if w<l or h<l
    puts "Image not valid"
  elsif w==h and (w>=l and h>=l)
    puts "Perfect"
  elsif w!=h and w>=l and h>=l
    puts "Crop and Accept"
  end
end
