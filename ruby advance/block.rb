[10,20,30].each do |n|
  puts n
end

[10,20,30].each{|n| puts n}


puts "\n============================= yield  ==============================="
def greet()
  puts "before"
  yield
  puts "after"
  yield
end

greet{print ""}


puts "\n============================= yield with parameter ==============================="
def greet()
  yield 20
  puts "1"
  yield 1
end

greet{|i| puts "hello #{i}"}

puts "\n============================= Block Variable ==============================="
x = "hellloooooooo"
5.times do |x|
  puts x
end
puts x

puts "\n============================= &block parameter ==============================="
def met(&block)
  puts "This is method"
  block.call
end
met { puts "This is &block example" }
met {(1..5).each{|n| puts n}}


puts "\n============================= Initializing objects with default values ==============================="
class Novel
  attr_accessor :pages, :category

  def initialize
    yield(self)
  end
end

novel = Novel.new do |n|
  n.pages = 564
  n.category = "thriller"
end

a = Novel.new do |a|
  a.pages = 45
  a.category = "fd"
end
puts "I am reading a #{novel.category} novel which has #{novel.pages} pages."
puts "I am reading a #{a.category} novel which has #{a.pages} pages."
