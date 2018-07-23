def find_outlier(arr)
  a = arr.partition {|e| e.odd?}
  if a[0].size == 1
    a[0].first
  elsif a[1].size == 1
    a[1].first
  end
end 