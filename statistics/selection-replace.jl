# if we are looking for specific event we should use 1 - P

function calculate(total, totalPossibilites, events)
    result = (totalPossibilites / total) ^ events
    println("Result is: $(round(result, digits=3))")
end

calculate(6, 4,6)