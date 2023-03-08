struct Case
    possibleResults
    total
end

function calculate(cases::Array{Case})
    total = prod(x.possibleResults / x.total for x in cases)
    println("Result is $(round(total, digits=4))")
end

problem = [Case(13,52),Case(12,52)]
calculate(problem)