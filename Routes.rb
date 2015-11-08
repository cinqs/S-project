class Routes
  
  def initialize
    require "./BasicCal.rb"
    @basicCal = BasicCal.new()
  end
  
  def formCheck(val)
    if val =~ /[a-zA-Z]+\([[0-9]\,]+\)/
      return(true)
    else
      return(false)
    end
  end
  
  def get(val)
    if self.formCheck(val)
      if val =~ /mean/
        val = @basicCal.valToArray(val,4)
        self.display(@basicCal.mean(val))
      elsif val =~ /var/
        val = @basicCal.valToArray(val,3)
        self.display(@basicCal.var(val))
      end
    else
      print "Your input is in a bad form\n"
      print ">>>>"
    end
  end
  
  def display(message)
    print "the answer for your input is #{message}\n"
    print ">>>>"
  end
end