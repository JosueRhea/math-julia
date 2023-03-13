struct Case
    freq
    num
end


function getWeightedAverage(cases)
    freqTotal = sum(map(x -> x.freq, cases)) # adds 1 to each element using map before summing
    denTotal = sum(x -> x.freq * x.num, cases)
    println("Weighted average is: $(round(denTotal / freqTotal, digits=2))")
end

problem = [Case(14, 2050), Case(18,1050),Case(14, 2600)]
getWeightedAverage(problem)