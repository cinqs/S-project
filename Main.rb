
class Main
  def initialize
    require "./Routes.rb"
    @routes = Routes.new();
    print "S project, based on Ruby, \nyou can modify, use, distribute, \nbut you can not sell for money\n\n\n\n"
  end
  
  def start
    print ">>>>"
    while 1
      val = gets
      
      if val != "quit\n"
        @routes.get(val)
      elsif val === "quit\n"
        break
      end
      
    end
  end
end

main = Main.new()

main.start()