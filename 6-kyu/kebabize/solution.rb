def kebabize(str)
  str.gsub(/\d/, '').split(/(?=[A-Z])/).map(&:downcase).join('-')
end