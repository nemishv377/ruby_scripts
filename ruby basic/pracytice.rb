# def prime?(num)
#   (2...num).each do |n|
#     if num%n==0
#       return false
#     end
#   end
#   return true
# end

# puts prime?4


# def square_of_sum (my_array, proc_square, proc_sum)
#     sum = proc_sum.call(my_array)
#     proc_square.call(sum)
# end

# proc_square_number = proc {|sum| sum**2}
# proc_sum_array     = proc {my_array.reduce(0) { |sum, num| sum + num } }
# my_array = gets.split().map(&:to_i)

# puts square_of_sum(my_array, proc_square_number, proc_sum_array)
def strike(str)
  "<strike>#{str}</strike>"
end
def mask_article(str,arr)
    arr.each do |x|
      puts x
      str.include? x ? puts "hy" : puts "by" #str.gsub(x,strike(x)) : str.gsub(x,x)
    end
  puts str
end

mask_article "my name is nemish",["my","is"]


def strike(str)
  "<strike>#{str}</strike>"
end

puts strike("mdf fsjdf")
