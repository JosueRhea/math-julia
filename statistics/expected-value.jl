struct Case
    x1
    p1
end

function calculate(cases::Array{Case}, noOfPossibleResults)
    result = sum(x.p1 for x in cases) / noOfPossibleResults
    println("Result is $(round(result, digits=2))")
end

# problem = [Case(1, -6), Case(2,2), Case(3,-6), Case(4,4), Case(5,-6), Case(6,6), Case(7,-6), Case(8, 8), Case(9, -6), Case(10, 10)]
# calculate(problem, 10)

function calculate2(cases::Array{Case}, price)
    result = sum(x.x1 * (x.p1 / 100) for x in cases)
    println(result)
    println("Result is $(round(price - result, digits=2))")
end

problem2 = [Case(26500,2), Case(0, 98)]

calculate2(problem2, 497)