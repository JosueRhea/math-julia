# μ average
# ❌ probability of a event
# when its most events like > or <

function findProbability(μ::Float64, ❌::Integer, isCondition::Bool)
    α = isCondition ? 1 - ((((μ)^❌ * (exp(1)^-μ)) / factorial(❌))) : (((μ)^❌ * (exp(1)^-μ)) / factorial(❌))
    println(round(α, digits=4))
    println(round(α * 100, digits=4))
end

findProbability(11.3, 9, false)
