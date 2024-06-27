module Name
  A=10
  def bella
  end
  def ana
  end
end
module Job
  def editor
  end
  def writer
  end
end

class Combo
include Name
include Job
  def f
  end
end

module Job
  def editor
  end
  def writer
  end
end

class Combo
include Name
include Job
  def f
  end
end

final=Combo.new
final.bella
final.ana
final.editor
final.writer
final.f
puts Name::A
puts "dfv"

puts "modules upgarded in moduleesssss"
