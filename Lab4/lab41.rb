array_size = 12
array_a = Array.new(array_size) { rand(1..100) }
array_b = Array.new(array_size) { rand(1..100) }

array_c = []

array_c += array_b.select(&:even?)
array_c += array_b.select(&:odd?)
array_c += array_a.select(&:odd?)
array_c += array_a.select(&:even?)

puts "Array A: #{array_a}"
puts "Array B: #{array_b}"
puts "Array C: #{array_c}"
