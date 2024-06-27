class Tutorial
  attr_accessor :name,:type,:difficulty
  @@difficulties = {
    :easy => 1,
    :medium => 2,
    :hard => 3,
    :advanced => 4,
    :expert => 5
  }
  def initialize(name,type,difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
  end

  def display
    puts "Name : #{@name}","Type : #{@type}","Difficulty : #{@difficulty}",""
  end

  def is_harder_than?(other)
    self.display
    other.display
    if self==other
      puts "Sorry, But you are comparing same Tutorial..."
    else
      if @type.downcase == other.type.downcase
        if @@difficulties[@difficulty.downcase] < @@difficulties[other.difficulty.downcase]
          puts false
        elsif @@difficulties[@difficulty.downcase] > @@difficulties[other.difficulty.downcase]
          puts true
        else
          puts "Difficulty level of both Tutorial are same"
        end
      else
        puts "You cannot compare a #{@type} with a #{other.type} tutorial"
      end
    end
  end
end

tutorial1 = Tutorial.new("Introduction of JS",:JavaScript,:easy)
tutorial2 = Tutorial.new("Introduction of ruby",:Ruby,:easy)
tutorial3 = Tutorial.new("JS conditional",:JavaScript,:medium)
tutorial4 = Tutorial.new("OOPS part-1 Ruby",:ruby,:advanced)
tutorial5 = Tutorial.new("Loops in ruby",:ruby,:hard)
tutorial6 = Tutorial.new("JS loops",:JavaScript,:medium)

puts "======== Comparing 4 and 5 ========="
puts tutorial4.is_harder_than? tutorial5

puts "======== Comparing 1 and 2 ========="
puts tutorial2.is_harder_than? tutorial2

puts "======== Comparing 3 and 6 ========="
puts tutorial3.is_harder_than? tutorial6

puts "======== Comparing 3 and 1 ========="
puts tutorial3.is_harder_than? tutorial1
