puts "Enter x:"
x = gets.chomp.to_i
puts "Enter t:"
t = gets.chomp.to_i
puts "Enter z:"
z = gets.chomp.to_i

result = Math.exp(Math.tan(x)**2) + (Math.sqrt((t - z).abs) / (Math.cos(Math::PI**2)**3 + Math.exp(Math::PI) * z**2)) + 2.3 * 10**1.6
puts "Result: #{result}"
