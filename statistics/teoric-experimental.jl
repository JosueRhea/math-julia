struct Case
    numberOfTest
    result
end

function getExperimentalProbability(cases::Array{Case}, condition)
    filtered = filter(condition, cases)
    totalFiltered = sum(x.numberOfTest for x in filtered)
    totalCases = sum(x.numberOfTest for x in cases)
    println("Experimental Probability: ", round(totalFiltered / totalCases, digits=3))
end

function getTeoricProbability(cases::Array{Case}, condition)
    filtered = filter(condition, cases)
    totalFiltered = length(filtered)
    totalCases = sum(x.numberOfTest for x in cases)
    possibleResults = length(cases)
    println("Teoric Probability ", round((totalFiltered * totalCases) / (totalCases * possibleResults), digits=3))
end

problem = [Case(6,"1C"), Case(11,"2C"), Case(13,"3C"),Case(13,"4C"),Case(5,"5C"),Case(7,"6C"), Case(8,"1X"), Case(10,"2X"), Case(9,"3X"), Case(9,"4X"), Case(7,"5X"), Case(12,"6X")]

condition(x::Case) = parse(Int, x.result[1]) % 2 == 0 && x.result[2] == "X"

getExperimentalProbability(problem, condition)
getTeoricProbability(problem, condition)