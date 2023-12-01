def ifTask(x)
  if x > -4 && x <= 0
    return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
  elsif x > 0 && x <= 12
    return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(2.0/7.0)
  else
    return 1 / ( 1 + x / (1 + x / (1 + x)))
  end
end

def caseTask(x)
  case x
  when -4..0
    return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
  when 0..12
    return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(2.0/7.0)
  else
    return 1 / ( 1 + x / (1 + x / (1 + x)))
  end
end

puts ifTask(3)
puts caseTask(3)