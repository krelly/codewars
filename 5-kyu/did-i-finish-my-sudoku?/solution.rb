require 'matrix'

def done_or_not(board)
  m = Matrix.rows(board)
  a = 9.times.all? {|i| valid?(m.row(i)) && valid?(m.column(i))}
  b = 3.times.all? do |i|
    3.times.all? do |j|
      valid? m.minor(i*3, 3, j*3, 3)
    end
  end
  a & b ? 'Finished!' : 'Try again!'
end

def valid?(matrix)
  matrix.to_a.flatten.sort == [*1..9]
end