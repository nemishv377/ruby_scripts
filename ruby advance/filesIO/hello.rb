File.open("firstfile.txt","a+") do |f|
  puts "hello ruby"
  # f.write "\nthis is fileIO"
  # f.write "\tdsvx"

  lines = f.readlines
  lines.each do |l|
    puts l
  end
  puts "  #{lines}"
end


# File.open("firstfile.txt","r") do |f|
#   if f
#     content = f.sysread(50)
#     puts content
#   end
# end


# File.rename("firstfile.txt","file1.txt")
File.delete("firstfile.txt")
