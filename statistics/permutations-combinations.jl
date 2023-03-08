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

# permutation(13,4)
# combinations(big(52), 2)

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
end

problem = [1,6,7]

count(problem)