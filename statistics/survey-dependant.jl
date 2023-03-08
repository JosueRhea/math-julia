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
    println("Result is: $(round(prod(operations), digits=3))")
    println("a : $a, b: $b, c: $c")
end

calcualte(75, 20, 3)