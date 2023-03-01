function findProbability(μ::Float64, ❌::Integer, isCondition::Bool)
    α = isCondition ? 1 - ((((μ)^❌ * (exp(1)^-μ)) / factorial(❌))) : (((μ)^❌ * (exp(1)^-μ)) / factorial(❌))
    println(round(α, digits=4))
    println(round(α * 100, digits=4))
end

findProbability(4.0, 2, true)
