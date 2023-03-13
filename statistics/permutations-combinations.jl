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

# permutation(big(26),3)
# combinations(16, 13)

## Count of arrays with object that are different

function countLetters(str::String)
    letterCounts = Dict{Char, Int}()
    for letter in str
        if letter in keys(letterCounts)
            letterCounts[letter] += 1
        else
            letterCounts[letter] = 1
        end
    end
    cases = values(letterCounts)
    total = sum(cases)
    result = factorial(total) / prod(factorial(x) for x in cases)
    println("Count is: $result")
end

# countLetters("MAMA")

function count(cases)
    total = sum(cases)
    result = factorial(total) / prod(factorial(x) for x in cases)
    println("Count is: $result")
    return result
end

# total = 4 niñas y 9 niños y 10 eventos
# den = 4 + 9 - 10 = [3,10]
# probabilidad de sacar 3 niñas = 4 - 3 = [1,3]
# probabilidad de sacar 7 niños = 9 - 7 = [2,7]
den = [6,10]
problem1 = [5,4]
problem2 = [1,6]

result1 = count(problem1)
result2 = count(problem2)
totalDen = count(den)

println("Result of selections witout replace: $(round((result1 * result2) / totalDen,digits=3))")