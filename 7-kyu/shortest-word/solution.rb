def find_short(s)
    s.split.sort_by(&:length).first.length
end