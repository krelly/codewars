def solution(list)
  stack = []
  answer = []
  list.each_cons(2) do |a, b|
    if (a - b).abs == 1
      stack << a << b
    else # it's not a range
      answer << if stack.empty?
                  "#{a}"
                elsif stack.length < 3 # range less than 3 elements
                  stack.join(',')
                else
                  "#{stack.first}-#{stack.last}"
                end
      stack.clear
    end
  end
  answer << "#{stack.first}-#{stack.last}" unless stack.empty?
  answer.join(',')
end