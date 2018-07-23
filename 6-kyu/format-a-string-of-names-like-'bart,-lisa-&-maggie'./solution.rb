def list names
  names.map!{|e| e[:name]}
  last_two = names.pop(2).join(' & ')
  if names.length >= 1
    names.join(', ') + ', ' + last_two
  else
    last_two
  end
end