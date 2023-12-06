def series_sum(x, n)
  sum = 0.0
  (0..n).each do |i|
    term = Math.cos(2 * i - 1) * x / (2 * i - 1)**2
    sum += term
  end
  sum
end

def infinite_series_sum(x, epsilon)
  sum = 0.0
  term = Float::INFINITY
  i = 0

  while term.abs > epsilon
    term = Math.cos(2 * i - 1) * x / (2 * i - 1)**2
    sum += term
    i += 1
  end

  sum
end

x_range = (0.1..1)
n_range = (20..58)
epsilon = 0.001

puts "Enter x from 0.1 to 1"
x = gets.chomp.to_f
unless x_range.include?(x)
  puts "x must be from 0.1 to 1"
  return
end

puts "Enter n from 20 to 58"
n = gets.chomp.to_i
unless n_range.include?(n)
  puts "n must be from 20 to 58"
  return
end

result = series_sum(x, n)
puts "Sum for x = #{x}, n = #{n}: #{result}"
result_infinite = infinite_series_sum(x, epsilon)
puts "Infinity sum for x = #{x} with epsilon = #{epsilon}: #{result_infinite}"
