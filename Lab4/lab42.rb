n = 8

matrix_b = Array.new(n) { Array.new(n) { rand(10) } }
vector_y = Array.new(n) { rand(10) }

result_vector = Array.new(n) do |i|
  row_sum = 0
  vector_y.each_with_index { |y_elem, j| row_sum += y_elem * matrix_b[j][i] }
  row_sum
end

puts "Matrix B:"
matrix_b.each { |row| puts row.inspect }

puts "\nVector Y: #{vector_y.inspect}"

puts "Y * B:"
puts result_vector.inspect

