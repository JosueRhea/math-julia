problem = [89, 82, 73, 86, 89, 68, 94]

function getRange(cases)
    max = maximum(cases)
    min = minimum(cases)
    range = max - min

    println("Range is $range")
end

getRange(problem)