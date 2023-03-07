# When the order of the options matter
function permutation(num, attime)
    result = factorial(num) / factorial(num - attime)
    println("Permutations ≌ $result")
end

# When the order of the options doesn't matter
function combinations(num, attime)
    result = factorial(num) / (factorial(num - attime) * factorial(attime))
    println("Combinations ≌ $result")
end

permutation(17, 5)
combinations(17, 5)