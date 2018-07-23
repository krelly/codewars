def reg_sum_hits(dices, sides)
    permutations = [*1..sides].repeated_permutation(dices)
    permutations
        .each_with_object(Hash.new(0)) { |e, h| h[e.reduce(:+)] += 1}
        .to_a
end
