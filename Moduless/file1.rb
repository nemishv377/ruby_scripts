module Library
  Num_of_books = 300
  def Library.fiction(n)
    puts n
  end
  def Library.horror(n)
    puts n
  end
end


module Gfg

    C = 10;

    # Prefix with name of Module
    # module method
    def Gfg.portal
        puts "Welcome to GFG Portal!"
    end

    # Prefix with the name of Module
    # module method
    def Gfg.tutorial
        puts "Ruby Tutorial!"
    end

    # Prefix with the name of Module
    # module method
    def Gfg.topic
        puts "Topic - Module"
    end

end

# displaying the value of
# module constant
puts Gfg::C

# calling the methods of the module
Gfg.portal
Gfg.tutorial
Gfg.topic
