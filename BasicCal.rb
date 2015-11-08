class BasicCal
  def valToArray(val, length)
    val = val[length + 1, val.length() - length -3]
    val = val.split(",")
    return(val)
  end
  
  def mean(val)
    sum = 0.0
    for i in 0..val.length()-1
      sum += Integer(val[i])
    end
    
    return sum / (val.length())
  end
  
  def var(val)
    mean = self.mean(val)
    
    sum = 0.0
    
    for i in 0..val.length() - 1
      val[i] = (Integer(val[i]) - mean) **  2
      
      sum += val[i]
    end
    
    return sum / (val.length() - 1)
    
  end
  
  def std(val)
    return(self.var(val) ** (1.0 / 2))
  end
  
  def sq(val)
    for i in 0..val.length() - 1
      val[i] = (Integer(val[i]) ** 2)
    end
    
    return(val)
  end
  
  def sqrt(val)
    for i in 0..val.length() - 1
      val[i] = Integer(val[i]) + 0.0
      val[i] = (val[i] ** (1.0 / 2))
    end
    
    return(val)
  end
end