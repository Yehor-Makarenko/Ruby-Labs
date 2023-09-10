binary = '10101010101010'
decimal = 0

for i in 0...binary.length do   
  if binary[i] == '1' then
    decimal += 2**(binary.length - i - 1)
  end
end

puts decimal