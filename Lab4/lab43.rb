def input_matrix(n)
  matrix = Array.new(n) { Array.new(n + 1, 12.to_f) }

  n.times do |i|
    matrix[i][i] = 2.to_f
    matrix[i][n] = (i + 1).to_f
  end 

  puts "Do you want to input A coefficients? (Y - yes, N - no)"
  res = gets.chop  
  if res == "N"
    return matrix
  end

  puts "Enter coefficients:"
  n.times do |i|
    n.times do |j|
      print "A[#{i + 1}, #{j + 1}]: "
      matrix[i][j] = gets.to_f
    end
  end

  matrix
end

def print_matrix(matrix)
  matrix.each { |row| puts row.inspect }
end

def gauss_elimination(matrix)
  n = matrix.size  
  matrix_copy = matrix.map(&:dup)

  (0...n-1).each do |i|
    pivot = matrix_copy[i][i]    
    (i + 1...n).each do |j|
      factor = matrix_copy[j][i] / pivot      
      (i..n).each { |k| matrix_copy[j][k] -= factor * matrix_copy[i][k]  }      
    end        
  end  
    
  (n - 1).downto(0) do |i|
    matrix_copy[i][n] /= matrix_copy[i][i]
    matrix_copy[i][i] = 1
    (0...i).each { |k| matrix_copy[k][n] -= matrix_copy[k][i] * matrix_copy[i][n] }    
  end

  matrix_copy.map { |row| row.last }
end

def main
  puts "Enter matrix size (n form 3 to 9):"
  n = gets.to_i

  unless (3..9).include?(n)
    puts "Size must be from 3 to 9."
    return
  end

  matrix = input_matrix(n)

  puts "\nMatrix A:"
  print_matrix(matrix)

  result = gauss_elimination(matrix)

  puts "\nSolution x:"
  puts result.inspect
end

main
