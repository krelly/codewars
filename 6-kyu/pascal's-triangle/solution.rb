def pascalsTriangle(n)
  triangle = [[1]]
  1.upto(n-1) do |i|
    prev_level = triangle[i-1]
    level = Array.new(i+1) do |j|
      next 1 if j == 0 || j == i
      prev_level[j-1] + prev_level[j]
    end
    triangle << level
  end
  triangle.flatten
end