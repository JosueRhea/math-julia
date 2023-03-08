struct Case
    valorOfX
    pOfX
end

function calculate(arr::Array{Case}, condition)
    filtered = filter(condition, arr)
    result = sum(n.pOfX for n in filtered)
    println("Result is: $(round(result, digits=2))")
end

problem = [Case(0,0.14),Case(1,0.21),Case(2,0.23), Case(3,0.18),Case(4,0.15), Case(5,0.09)]

condition1(x::Case) = x.valorOfX > 3
condition2(x::Case) = x.valorOfX <= 1

calculate(problem, condition1)
calculate(problem, condition2)