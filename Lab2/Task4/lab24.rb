decimal = 333
binary = ''

while decimal > 0 do
  binary += (decimal % 2).to_s
  decimal /= 2
  puts decimal
end

puts binary.reverse