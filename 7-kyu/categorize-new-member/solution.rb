def openOrSenior(data)
  data.map do |age,handicap|
    if age >= 55 && handicap > 7
      'Senior'
    else
      'Open'
    end
  end
end