def newFile(filename,content)
  File.open(filename,"a+") do |f|
    f.write(content)
    f.rewind
    puts "========= #{filename} =========="
    puts f.read
  end

end

newFile("2nd.txt",gets.to_s)

# n = gets.to_i
# sum=0
# (10...n).each do |i|
#     sum=0
#     i = i.to_s
#     (0...i.length).each do |j|
#       if i[j].to_i==0
#         sum+=1
#       else
#         sum +=1.upto(i[j].to_i).inject(:*)
#       end
#     end

#   if
#     # to = n[i].to_i
#     # puts 1.upto(to).inject(:*)
#     # # sum += 1.upto(to).inject(:*)
# end
# puts sum
