struct Case 
    testNumber
    result
end

problem = [Case(266, "Rojo"),Case(136, "Amarillo"), Case(98, "Azul")]

function getExperimentalProbability(cases::Array{Case}, result) 
    count = 0
    total = 0
    for c in cases
        if c.result == result
            count = c.testNumber
        end
        total += c.testNumber
    end
    println("Experimental Probability ", count / total)
end

function getTeoricProbability(cases::Array{Case}, posibleResultsTotal, num)
    total = 0
    for c in cases
        total += c.testNumber
    end    
    println("Teoric Probability ", (num * total) /(posibleResultsTotal * total))
end

getExperimentalProbability(problem, "Rojo")
getTeoricProbability(problem, 10, 5)