def rolldice_sum_prob(sum, dices)
    vals = [1,2,3,4,5,6]
    comb = vals.repeated_permutation(dices).select { |e| e.reduce(:+) == sum}
    comb.length / (6.0 ** dices)
end