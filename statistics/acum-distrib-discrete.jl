struct Case
    valorOfX
    pOfX
end

function calculate(arr::Array{Case}, condition)
    filtered = filter(condition, arr)
    result = sum(n.pOfX for n in filtered)
    println("Result is: $(round(result, digits=2))")
    return result
end

problem = [Case(-3,0.28),Case(-2,0.18),Case(-1,0.26), Case(0,0.15),Case(1,0.13)]

condition1(x::Case) = x.valorOfX <= 3/4
# condition2(x::Case) = x.valorOfX <= -2

res1 = calculate(problem, condition1)
# res2 = calculate(problem, condition2)

# println(res1 - res2)