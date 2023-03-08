function mutuallyExclusive(a,b)
    result = (a + b) - 0
    println("Result is: $(round(result, digits=3))")
end

function independantEvents(a,b)
    p = a * b
    result = (a + b) - p
    println("Result is: $(round(result, digits=4))")
end

a = 0.03
b = 0.88

mutuallyExclusive(a,b)
independantEvents(a,b)