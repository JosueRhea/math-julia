function getProbability(case1, total1, case2, total2)
    result1 = case1 / total1 
    result2 = case2 / total2

    println("Result is: $(result1 * result2)")
end

case1 = 10
total1 = 20

case2 = 1
total2 = 2

getProbability(case1, total1, case2, total2)