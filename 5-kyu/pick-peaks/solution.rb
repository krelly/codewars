def pick_peaks(arr)
  max_idx = nil
  positions = []
  arr.each_cons(3).with_index do |(a, b, c), i|
    if a < b && b > c
      positions << i
    elsif a < b && b == c
      max_idx = i
    elsif a==b && b > c && !max_idx.nil?
      positions << max_idx
    end
  end
  positions.map! {|e| e+1}

  {
          'pos' => positions,
          'peaks' => positions.map {|i| arr[i]}
  }
end