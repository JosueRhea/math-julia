problem = [768 , 544, 128, 160]

function getPercentaje(cases, total)
    totalP = 0
    for case in cases
        percentaje = round(case / total * 100)
        totalP += percentaje
        println("Percentaje of $case is $(percentaje)%")
    end
    println("Total of percentaje was $totalP%")
end

getPercentaje(problem, 1600)