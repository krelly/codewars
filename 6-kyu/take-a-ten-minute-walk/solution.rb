def isValidWalk(walk)
  return false if walk.length > 10 ||  walk.length < 10
  # x,y
  # x - horisontal, y - vertical
  position = [0,0]
  walk.each do |direction|
    case direction
      when 'n' then position[0] += 1
      when 's' then position[0] -= 1
      when 'e' then position[1] += 1
      when 'w' then position[1] -= 1  
    end
  end
  position == [0,0]
end