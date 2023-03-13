struct Case
    x1
    p1
end

function calculate(cases::Array{Case}, noOfPossibleResults)
    result = sum(x.p1 for x in cases) / noOfPossibleResults
    println("Result is $(round(result, digits=2))")
end

# problem = [Case(1, 1), Case(2,-6), Case(3,3), Case(4,-6), Case(5,5), Case(6,-6), Case(7,7), Case(8, -6), Case(9, 9), Case(10, -6)]
# calculate(problem, 10)

function calculate2(cases::Array{Case}, price)
    result = sum(x.x1 * (x.p1 / 100) for x in cases)
    println(result)
    println("Result is $(round(price - result, digits=2))")
end

problem2 = [Case(4500,11), Case(0, 89)]

calculate2(problem2, 383)