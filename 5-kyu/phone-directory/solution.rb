def phone(string, num)
  data = parse_data(string)
  result = data.select {|e| e[:phone] == num}
  if result.length > 1 
    "Error => Too many people: #{num}"
  elsif result.empty?
    "Error => Not found: #{num}"
  else
    result = result.first
    "Phone => #{result[:phone]}, Name => #{result[:name]}, Address => #{result[:address]}"
  end
end

def parse_data(string)
  arr = []
  string.each_line do |line|
    d = {}
    line.gsub!(/\<(?<name>(.*?))\>/) {|s| d[:name] = $~[:name]; ''}
    line.gsub!(/\+(?<phone>\d{1,2}-\d{3}-\d{3}-\d{4})/) { |s| d[:phone] = $~[:phone]; ''}
    # anything left is address?
    d[:address] = line.tr('*_:;,/$!?',' ').squeeze(' ').strip
    arr << d
  end
  arr
end

