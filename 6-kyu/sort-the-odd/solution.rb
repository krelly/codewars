def sort_array(source_array)
  odds = source_array.reject{|e,i| e.even?}.sort
  source_array.each_with_index do |e,i| 
   odds.insert(i,e) if e.even?
  end
  odds
end