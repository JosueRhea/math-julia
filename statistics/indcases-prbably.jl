function getProbability(case1, total1, case2, total2)
    result1 = case1 / total1 
    result2 = case2 / total2

    println("Result is: $(result1 * result2)")
end

case1 = 51
total1 = 51 + 459

case2 = 120
total2 = 120 + 280

getProbability(case1, total1, case2, total2)