class Main
  def initialize
    print ">>>>"
    while 1
      val = gets
      
      if val != "quit\n"
        if index = (val =~ /mean/)
          if val =~ /[a-zA-Z]+\([0-9]+\,[0-9]+\)/
            print "right form"
          else
            print "bad form"
          end
        end
      elsif val === "quit\n"
        break
      end
      
    end
  end
end

main = Main.new()