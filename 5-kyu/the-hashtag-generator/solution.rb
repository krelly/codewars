def generateHashtag(str)
  sentence = str.split.map(&:capitalize).join
  if sentence.length > 140 || sentence.length == 0
    false
  else
    "##{sentence}"
  end
end