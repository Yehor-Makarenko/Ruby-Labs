def f1(x)
  sum = 1
  for i in 1..10
    sum += -1**i * x**i * (i+1.0) / (i+2.0)
  end
  return sum
end

def f2()
  sum = 1.0
  for i in 1..8
    sum += 1.0 / 3**i
  end
  return sum
end

puts f1(2)
puts f2()