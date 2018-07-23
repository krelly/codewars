def count_smileys(arr)
  arr.count { |e| smile?(e) }
end

def smile?(str)
  str.match /(\:|\;){1}(\-|\~)?(\)|D)/
end