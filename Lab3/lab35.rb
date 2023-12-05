$n = 2
$c = 7


def function_y(x)  
  return (x**((($n-$c)**2 + 4 * $n * $c).to_f / ($n**2 - $c**2).to_f))**(1.0/$n) + (x / $n.to_f + 12) / (6 - $c * x)
end


def function_z(x)
  return (1 - Math.cos(4 * x)).to_f / (Math.cos(2 * x)**-2 - 1).to_f + (1 + Math.cos(4 * x)).to_f / (Math.sin(2 * x)**-2 - 1).to_f + Math.tan(2 * Math::PI / 9 - x)**($c.to_f / $n.to_f)
end


puts "Tabulation of function y:"
($n + $c).times do |i|
  x = 1 + i * ($n.to_f / ($n + $c).to_f)
  y = function_y(x)
  puts "x: #{x}, y(x): #{y}"
end


puts "\nTabulation of function z:"
((3 * $n / 2) + $c).times do |i|
  x = Math::PI / $n.to_f + i * ((Math::PI - Math::PI / $n.to_f) / ((3.0 / 2.0) * $n + $c).to_f)
  y = function_z(x)
  puts "x: #{x}, z(x): #{y}"
end


puts "\nTabulation of function f:"
(2 * $n).times do |i|
  x = 2 + i * (($c - 2).to_f / (2 * $n).to_f)
  if x < $n
    y = function_y(x)
  elsif x < 2 * $n
    y = function_z(x)
  else
    y = function_y(x) + function_z(x)
  end
  z = function_z(x)
  f = y + z
  puts "x: #{x}, f(x): #{f}"
end
