function rollDiceTwice()
    outcomes = []
    for i in 1:6
        for j in 1:6
            push!(outcomes, (i, j))
        end
    end
    return outcomes
end

function calculateProbability(condition)
    outcomes = rollDiceTwice()
    filtered = filter(condition, outcomes)

    repeatedFiltered = Dict{Int, Int}()
    for n in filtered
        if sum(n) in keys(repeatedFiltered)
            repeatedFiltered[sum(n)] += 1
        else
            repeatedFiltered[sum(n)] = 1
        end
    end
    num = sum(values(repeatedFiltered))
    den = length(outcomes)
    result = round(num / den, digits=2)

    println("Result is: $result")
end

condition1(x::Tuple{Int64, Int64}) = sum(x) > 8
# condition2(x::Tuple{Int64, Int64}) = sum(x) % 4 == 0
# condition2(x::Tuple{Int64, Int64}) = sum(x) % 3 == 0 || sum(x) % 5 == 0 || (sum(x) % 3 == 0 && sum(x) % 5 == 0)

calculateProbability(condition1)
calculateProbability(condition2)