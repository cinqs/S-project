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
      elsif val =~ /std/
        val = @basicCal.valToArray(val,3)
        self.display(@basicCal.std(val))
      elsif val =~ /sqrt/
        val = @basicCal.valToArray(val, 4)
        self.display(@basicCal.sqrt(val))
      elsif val =~ /sq/
        val = @basicCal.valToArray(val, 2)
        self.display(@basicCal.sq(val))
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