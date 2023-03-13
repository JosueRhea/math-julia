struct Case
    possibleResults
    total
end

function calculate(cases::Array{Case})
    total = prod(x.possibleResults / x.total for x in cases)
    println(total)
    println("Result is $(round(total, digits=4))")
end

problem = [Case(14,56 + 14),Case(48,48 + 12)]
calculate(problem)