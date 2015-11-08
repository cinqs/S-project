class Routes
  
  def initialize
    require "./BasicCal.rb"
    @basicCal = BasicCal.new()
  end
  
  def get(val)
    if val =~ /mean/
      @basicCal.mean(val)
    elsif val =~ /var/
      @basicCal.var(val)
    end
  end
end