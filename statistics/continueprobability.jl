# Calculate area of (1 / (α - β)) × (α - b) ̇= 1
# To determinate the average μ ≌ (α + β) / 2
# To calculate standard deviation we use the formula α ≌ √((β - α)²) / 12
# To calculate the probability of ❌ we can do  1 / (α - β) ⋅ range of β - ❌

function validateNumber(α, β, ŋ)
    μ = (ŋ / (β - α)) * (β - α)
    println("Total area: $μ")
end

function getAverage(α, β)
    μ = (α + β) / 2
    println("Average: ", μ)
end

function getStandardDeviation(α, β)
    μ = sqrt((β - α)^2 / 12)
    println("Standard deviation ", round(μ, digits=2))
end

function getArea(α, β, ŋ)
    μ = (1 / (β - α)) * ŋ
    println("Area of $ŋ is ", round(μ, digits=4))
end

α = 0.5
β = 10
case1 = β - 5

validateNumber(α, β, 1)
getAverage(α, β)
getStandardDeviation(α,β)
getArea(α, β, case1)