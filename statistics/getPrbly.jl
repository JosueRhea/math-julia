struct Case 
    testNumber
    result
end

problem = [Case(246, "Rojo"),Case(146, "Amarillo"), Case(108, "Azul")]

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

getExperimentalProbability(problem, "Azul")
getTeoricProbability(problem, 30, 2)