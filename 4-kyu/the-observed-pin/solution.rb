KEYPAD = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [nil, 0, nil]
]

def adjasent(i, j)
  adjacent_pos = [i+1, j], [i-1, j], [i, j+1], [i, j-1]
  valid_positions = adjacent_pos.select {|(i, j)| i >= 0 && j >= 0}
  valid_positions.map {|i,j| KEYPAD.dig(i,j) }.compact
end

$adjasents = {}
size = KEYPAD.length
size.times do |i|
  size.times do |j|
    el = KEYPAD[i][j]
    $adjasents[el] = [el, *adjasent(i, j)] unless el.nil?
  end
end


def get_pins(observed_pin)
  a = observed_pin.chars.map {|c| $adjasents[c.to_i]}
  a[0].product(*a[1..-1]).map &:join
end

get_pins('11')