class Ruby
  def initialize(name)
    @name=name
    puts "object #{@name} created."
  end

  def greeting
    puts "Hello #{@name} Good morning"
  end

  def bye
    puts "Byy #{@name}"
  end
end

ruby1 = Ruby.new("Nemish")
ruby2 = Ruby.new("Rutvik")
ruby1.greeting
ruby2.bye


class Circle
  def initialize(r)
    @r=r
    puts "radius = #{@r}"
  end

  def area
    return 3.14*@r*@r
    2.14*@r*@r
  end
end

o1=Circle.new(5)
puts o1.area

puts o1
