function calcualte(total, possibleResults, count)
    a = total
    b = count 
    c = possibleResults

    operations = []
    while b > 0
        push!(operations, c / a)
        b -= 1
        a -= 1
        c -= 1
    end
    result = prod(operations)
    println("Result is: $(round(result, digits=3))")
    println("a : $a, b: $b, c: $c")
    return  result
end

rsult1 = calcualte(50, 13,1)
rsult2 = calcualte(49, 37,2)
println(rsult1 * rsult2)