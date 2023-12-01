def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end  

$e = 0.00001

def f1
  sum = 0  
  n = 2
  loop do
    xn = (factorial(n-1).to_f / factorial(n+1).to_f)**(n*(n+1))
    sum += xn
    if xn.abs < $e 
      break
    end
    n += 1
  end
  return sum
end

def f2(a, x)
  sum = 1.0
  n = 1.0
  loop do
    xn = ((x * Math.log(a))**n).to_f / factorial(n).to_f
    sum += xn
    if xn.abs < $e 
      break
    end
    n += 1
  end
  return sum
end

def f3 
  sum = 0.0
  n = 1.0
  loop do
    xn = (factorial(3*n - 2) * factorial(2*n-1)).to_f / (factorial(4*n) * 5**(2*n) * factorial(2*n)).to_f
    sum += xn
    if xn.abs < $e 
      break
    end
    n += 1
  end
  return sum
end

puts f1()
puts 1.4**4
puts f2(1.4, 4)
puts f3()