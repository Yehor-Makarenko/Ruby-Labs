
def t1(a, b, $c, x, y, z)
  puts"a) !(a || b) && (a && !b) = #{!(a || b) && (a && !b)}"
  puts "b) (z != y) <= (6 >= Y) && a || b && c && x>=1.5 = #{(z != y) == (6 >= y) && a || b && $c && x>=1.5}"
  puts "c) (8 - x * 2 <= z) && (x^2 >= y^2) ||  (z >= 15) = #{(8 - x * 2 <= z) && (x**2 >= y**2) ||  (z >= 15)}"
  puts "d) x > 0 && y < 0 || z >= (x * y - (-y / x)) + (-z) / 2 = #{x > 0 && y < 0 || z >= (x * y - (-y / x)) + (-z) / 2}"
  puts "e) !(a || b && !(c || (!a || b))) = #{!(a || b && !($c || (!a || b)))}"
  puts "f) x^2 + y^2 >= 1 && x >= 0 && y >= 0 = #{x^2 + y^2 >= 1 && x >= 0 && y >= 0}"
  puts "g) (a && (c && b != b || a) || c) && b = #{(a && ($c && b != b || a) || $c) && b}"
end

def t2(x, p)
  puts "#{!((Math.exp(x*x) - Math.sin(x)) < 3.14) && (p || !p)}"
end

puts
t1(true, false, true, 50, 10, -5)
puts
t2(4.5, true)