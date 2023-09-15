decimal = 333
binary = ''

while decimal > 0 do
  binary += (decimal % 2).to_s
  decimal /= 2
end

puts binary.reverse