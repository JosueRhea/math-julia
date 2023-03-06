struct Case
    freq
    num
end

problem = [Case(8, 4), Case(13,2),Case(15, 3), Case(10, 6)]

function getWeightedAverage(cases)
    freqTotal = sum(map(x -> x.freq, cases)) # adds 1 to each element using map before summing
    denTotal = sum(x -> x.freq * x.num, cases)
    println("Weighted average is: $(round(denTotal / freqTotal, digits=1))")
end

getWeightedAverage(problem)