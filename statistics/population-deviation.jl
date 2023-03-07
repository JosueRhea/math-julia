function populationDeviation(cases)
    len = length(cases)
    total = sum(cases)
    denominator  = total / len

    den = sum(map(n -> (n - denominator)^2, cases))
    
    result = sqrt(den / len)
    println("Population deviation: $(round(result, digits=2))")
end

function sampleDeviation(cases)
    len = length(cases)
    total = sum(cases)
    denominator  = total / len    

    den = sum(map(n -> (n - denominator)^2, cases))
    
    result = sqrt(den / (len - 1))
    println("Sample deviation: $(round(result, digits=2))")
end

problem = [55,49,50,48,53]

populationDeviation(problem)
sampleDeviation(problem)