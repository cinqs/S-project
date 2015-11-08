class BasicCal
  def valToArray(val, length)
    val = val[length + 1, val.length() - length -3]
    val = val.split(",")
    return(val)
  end
  
  def mean(val)
    val = self.valToArray(val,4)
    cnt = 0.0
    for i in 0..val.length()-1
      cnt += 1
      sum += Integer(val[i])
    end
    
    return sum / cnt
  end
end