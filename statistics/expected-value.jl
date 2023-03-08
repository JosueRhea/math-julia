struct Case
    x1
    p1
end

function calculate(cases::Array{Case}, noOfPossibleResults)
    result = sum(x.p1 for x in cases) / noOfPossibleResults
    println("Result is $(round(result, digits=2))")
end

problem = [Case(1, 1), Case(2,2), Case(3,3), Case(4,-2), Case(5,-2), Case(6,-2)]

calculate(problem, 6)