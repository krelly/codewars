def points(str,worth)
  race_count = str.split.map(&:to_i)
  race_count.zip(worth).map{|a,b| a*b}.reduce(:+)
end

def goodVsEvil(good, evil)
  case points(good,[1,2,3,3,4,10]) <=> points(evil,[1,2,2,2,3,5,10])
  when 1
    'Battle Result: Good triumphs over Evil'
  when -1
    'Battle Result: Evil eradicates all trace of Good'
  when 0
    'Battle Result: No victor on this battle field'
  end
end