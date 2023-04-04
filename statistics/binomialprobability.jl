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
    println("Binomial probability: ", round(β, digits=3))
    return β
end

# result1 = findProbability(0.16, 3, 6)


function combinations(n::Int, k::Int)::Int
    if k > n
        return 0
    end
    return factorial(n) ÷ (factorial(k) * factorial(n-k))
end

function binomialProblems(total, target, percentaje)
    com = combinations(total, target)
    result = com * (percentaje^target) * ((1-percentaje)^(total-target))

    println("The probability of a event is $result")
    println("The probability of a event is $(round(result, digits=3))")
end

# binomialProblems(5,2, 0.50)

function binomialWithRange(n, x, probability, isLessThan)
    result = 0
    if isLessThan
        for i in 0:x
            result += combinations(n, i) * (probability^i) * ((1-probability)^(n-i))
        end
    else
        for i in x:n
            result += combinations(n, i) * (probability^i) * ((1-probability)^(n-i))
        end
    end
    println("The probability of a event is $(round(result, digits=2))")
end

binomialWithRange(7, 2 + 1, 0.16, false)

function averageAndStandartDeviation(n, p)
    average = n * p
    standartDeviation = sqrt(n * p * (1 - p))
    println("Average: $average")
    println("Standart Deviation: $(round(standartDeviation, digits=3))")
end

# averageAndStandartDeviation(10, 0.94)

function findLessOrMoreThan(n, p, x, isLessThan)
    result = 0
    if isLessThan
        for i in 0:x
            println(i)
            result += combinations(n, i) * (p^i) * ((1-p)^(n-i))
        end
    else
        for i in x:n
            println(i)
            result += combinations(n, i) * (p^i) * ((1-p)^(n-i))
        end
    end
    println("The probability of a event is $(round(result, digits=3))")
end

# findLessOrMoreThan(6, 0.16, 3, false)