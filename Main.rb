
class Main
  def initialize
    require './BasicCal.rb'
    @basicCal = BasicCal.new()
    print "S project, based on Ruby, \nyou can modify, use, distribute, \nbut you can not sell for money\n\n\n\n"
  end
  
  def start
    print ">>>>"
    while 1
      val = gets
      
      if val != "quit\n"
        if index = (val =~ /mean/)
          mean(val)
        else val =~ /var/
          var(val)       
        end
      elsif val === "quit\n"
        break
      end
      
    end
  end
  
  def var(val)
    if val =~ /[a-zA-Z]+\([0-9]+\,[0-9]+\)/
      print "right form\n"
      val = @basicCal.valToArray(val, 3)
      mean = (Integer(val[0]) + Integer(val[1])) / 2.0
      print "the result of the input is:\n"
      print "\t#{mean}\n"
      print ">>>>"
    else
      print "bad form\n"
      print ">>>>"
    end
  end
  
  
  def mean(val)
    if val =~ /[a-zA-Z]+\([0-9]+\,[0-9]+\)/
      print "right form\n"
      val = @basicCal.valToArray(val, 4)
      mean = (Integer(val[0]) + Integer(val[1])) / 2.0
      print "the result of the input is:\n"
      print "\t#{mean}\n"
      print ">>>>"
    else
      print "bad form\n"
      print ">>>>"
    end   
  end
end

main = Main.new()

main.start()