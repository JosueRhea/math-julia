# μ average
# ❌ probability of a event
# when its most events like > or <
# (78/ 60) is the average of the events

function findProbability(μ::Float64, ❌::Integer, isCondition::Bool)
    α = isCondition ? 1 - ((((μ)^❌ * (exp(1)^-μ)) / factorial(❌))) : (((μ)^❌ * (exp(1)^-μ)) / factorial(❌))
    println(α)
    println(round(α, digits=3))
    println(round(α * 100, digits=4))
    return α
end

findProbability(6.9, 2, true)

function findProbabilityWithInRange(average, n, isLessThan)
    listOfProbabilities = []
    while n >= 1
        push!(listOfProbabilities, ℯ^(-average) * (average^n) / factorial(n))
        n -= 1
    end
    result = isLessThan ? sum(listOfProbabilities) : 1 - sum(listOfProbabilities)
    println("The probability of a event is $(round(result, digits=3))")
end

findProbabilityWithInRange(0.20, 3, false)