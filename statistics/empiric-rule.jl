function calculateEmpiricRule(average, standardDeviation)
    # calculate the above and below average
    aboveAverage = average + standardDeviation
    belowAverage = average - standardDeviation
    # calculate the above and below average
    aboveAverage2 = average + (2 * standardDeviation)
    belowAverage2 = average - (2 * standardDeviation)
    # calculate the above and below average
    aboveAverage3 = average + (3 * standardDeviation)
    belowAverage3 = average - (3 * standardDeviation)
    # print the results
    println("Above average: ", aboveAverage)
    println("Above average 2: ", aboveAverage2)
    println("Above average 3: ", aboveAverage3 )
    println("Below average: ", belowAverage)
    println("Below average 2: ", belowAverage2)
    println("Below average 3: ", belowAverage3)
end

calculateEmpiricRule(76.5, 5.2)