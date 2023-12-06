def f1(x)
  2 / (1 + 4 * x)
end

def f2(x)
  Math.asin(Math.sqrt(x)) / Math.sqrt(x * (1 - x))
end

def prm(a, b, n, &func)
  h = (b - a) / n.to_f
  sum = 0

  (1..n).each do |i|
    xi = a + i * h - h / 2
    sum += func.call(xi)
  end

  sum *= h
end

def trp(a, b, n, &func)
  h = (b - a) / n.to_f
  sum = (func.call(a) + func.call(b)) / 2.0

  (1..n - 1).each do |i|
    xi = a + i * h
    sum += func.call(xi)
  end

  sum *= h
end

a1, b1 = 2.2, 1.2
a2, b2 = 0.2, 0.3
n = 1000

result_prm_f1 = prm(a1, b1, n) { |x| f1(x) }
result_trp_f1 = trp(a1, b1, n) { |x| f1(x) }

result_prm_f2 = prm(a2, b2, n) { |x| f2(x) }
result_trp_f2 = trp(a2, b2, n) { |x| f2(x) }

puts "f1 prm: #{result_prm_f1}"
puts "f1 trp: #{result_trp_f1}"
puts "f2 prm: #{result_prm_f2}"
puts "f2 trp: #{result_trp_f2}"
