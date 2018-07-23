def solution(n)
  n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
end