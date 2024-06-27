class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def toFehrenhiet
    puts "#{((9.0/5)*@temperature+32).round} F"
  end
end

c1 = Celsius.new(100)
c1.toFehrenhiet
