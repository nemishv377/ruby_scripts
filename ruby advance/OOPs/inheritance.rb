class School

  attr_accessor :name,:age
  @@schoolName = "Ashadeep"
  def initialize(name,age)
    @name=name
    @age=age
    puts "Object Created....."
  end

  def intro
    puts "school = #{@@schoolName} \nName = #{@name} \nAge = #{@age}"
  end
end



s1 = School.new("Nemish",23)
s1.intro

puts s1.name

puts "=================================================================================================================="
class Phone
  def ring
    puts "tik...tik..tik..."
  end
end

class Cellphone < Phone
  def calculator
    put "I can solve mathematics puzzle."
  end
end

class Smartphone < Cellphone
  def camera
    puts "I can take picture."
  end

  def ring(n)
    puts "tok..."*n
  end

  def ring(n,m)
    puts "tok..."*n*m
  end
end


sp1 = Smartphone.new
# sp1.ring(2)  # error
sp1.ring(2,4)
puts "Java".casecmp "Java"
puts "Java".casecmp "java"
puts "Java".casecmp "ja"
