def solution(input, markers)
  input.gsub(/\s*#{Regexp.union(markers)}.*/,'')
end