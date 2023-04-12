function calculateStandartCurves(average, devation, x1, x2)
    result1 = (x1 - average) / devation
    result2 = (x2 - average) / devation
    return result1, result2
end

result1, result2 = calculateStandartCurves(-5, 4, -7, 5)
println(result1)
# println(result2)