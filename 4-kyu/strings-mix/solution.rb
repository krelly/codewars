def mix(s1, s2)
  a = [s1, s2].map do |e|
    e.chars
            .grep(/[[:lower:]]/) # select only lowercase letter
            .each_with_object(Hash.new('')) {|e, h, v| h[e] += e} # group occurrences by character
            .select {|k, v| v.length > 1} # we only need with length > 1
  end
  keys = (a[0].keys + a[1].keys).uniq # get keys from both hashes
  b = keys.each.with_object({}) {|k, h| h[k] = [a[0][k], a[1][k]]}
  b.values
          .map {|a, b| compare_strings(a, b)}
          .sort {|b, a| [a.length, b] <=> [b.length, a]} # sort results
          .join('/')
end

def compare_strings(a, b)
  case a.to_s <=> b.to_s
    when 0 then
      "=:#{a}"
    when -1 then
      "2:#{b}"
    when 1 then
      "1:#{a}"
  end
end