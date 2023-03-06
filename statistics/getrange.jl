problem = [9,20, 18,22, 11, 22, 15,4]

function getRange(cases)
    max = maximum(cases)
    min = minimum(cases)
    range = max - min

    println("Range is $range")
end

getRange(problem)