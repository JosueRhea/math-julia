# if we are looking for specific event we should use 1 - P

# dice case 6 total - totalPossibilites= no. roll - events no. roll

function calculate(total, totalPossibilites, events)
    result =  (totalPossibilites / total) ^ events
    println("Result is: $(round(result, digits=3))")
end

calculate(17, 8, 4)