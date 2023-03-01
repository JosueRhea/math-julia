# C es el símbolo de combinación.
# n es el número de ensayos.
# x es la variable aleatoria definida como el número de éxitos.
# 𝝅 es la probabilidad de éxito en cada ensayo.

function findProbability(π::Float64, ❌::Int64,ɳ::Int64)
    α = factorial(ɳ) / (factorial(❌) * factorial(ɳ - ❌))
    println("α ", α)
    γ = ɳ - ❌
    println("γ ", γ)
    ρ = π ^ ❌
    println("ρ ", ρ)
    κ = ((1 - π)^γ)
    println("κ ",κ)
    β = α * ρ * κ
    println(β)
end

findProbability(0.08, 4, 7)
