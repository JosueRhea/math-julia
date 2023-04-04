function calculateStandartDeviationAndAverage(a, b)
    average = a / b
    deviation = sqrt(average)
    println("Average is $(round(average, digits=2))")
    println("Deviation is $(round(deviation, digits=2))")
end

calculateStandartDeviationAndAverage(7105, 8450)