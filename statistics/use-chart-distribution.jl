function calculateArea(distance, height, isOutside)
    return isOutside ? 1 - (distance * height) : distance * height
end

function calculateAreaWithCurve(x1, x2, height)
    resutl1 = x1 * height
    result2 = 1/2 * x2 * height
    return 1 - resutl1 - result2
end

result = calculateArea(6.5 - 4.7, 0.125, false)
# result = calculateAreaWithCurve(6 - 4, 4 - 2, 0.25)
println(result)
println(round(result, digits=3))