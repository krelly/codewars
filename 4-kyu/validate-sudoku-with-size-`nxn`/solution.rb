require 'matrix'

class Sudoku
  def initialize(board)
    begin
      @board = Matrix.rows(board)
    rescue Matrix::ErrDimensionMismatch
      @valid = false
    else
      @n = @board.row_count
      @valid_range = [*1..@n]
      @squares_in_row = Math.sqrt(@n).to_i
      @valid = check_validity
    end
  end

  def is_valid
    @valid
  end

  private
  def check_validity
    a = @n.times.all? {|i| valid?(@board.row(i)) && valid?(@board.column(i))}
    b = @squares_in_row.times.all? do |i|
      @squares_in_row.times.all? do |j|
        valid? @board.minor(i*@squares_in_row, @squares_in_row, j*@squares_in_row, @squares_in_row)
      end
    end
    a & b
  end

  def valid?(matrix)
    matrix.to_a.flatten.sort == @valid_range
  end
end