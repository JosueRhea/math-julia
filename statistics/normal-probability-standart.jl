import Pkg
using Distributions

function erf(x)
    # save the sign of x
    sign = x < 0 ? -1 : 1
    x = abs(x)

    # constants
    a1 = 0.254829592
    a2 = -0.284496736
    a3 = 1.421413741
    a4 = -1.453152027
    a5 = 1.061405429
    p = 0.3275911

    # A&S formula 7.1.26
    t = 1.0 / (1.0 + p * x)
    y = 1.0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * t * exp(-x * x)
    return sign * y # erf(-x) = -erf(x)
end

function calculateProbNormalStandart(x, isLessThan)
    if isLessThan
        return 0.5 * (1 + erf(x / sqrt(2)))
    else
        return 0.5 * (1 - erf(x / sqrt(2)))
    end
end

# result1 = calculateProbNormalStandart(-0.87, false)
# result2 = calculateProbNormalStandart(1.79, true)
# println(result1)
# println(round(result1 - 0.7804, digits=4))
# println(result2 - result1)
# println(round(result2 - result1, digits=3))


function determineValorOfC(x, isDouble)
    if isDouble
        normalized = ((1 - x) / 2)
        c = quantile(Normal(0, 1), normalized)
        return c
    end

    c = quantile.(Normal(), x)[1]
    return c
end

# cresult = determineValorOfC(0.7804, true)
# println(cresult)
# println(round(cresult, digits=2))

# when is morethan it can't negative
# when is lessthan it can be negative

# println(calculateP(0.84))

function calculateProbabilityBasic(mu::Float64, sigma::Float64, x::Float64)
    z = (x - mu) / sigma
    prop = cdf(Normal(0, 1), z)
    return prop
end

# resultPrbably = calculateProbabilityBasic(560.00, 125.00, 700.00)
# println(resultPrbably)
# println(round(1 - resultPrbably, digits=4))


function calculateProbabilityAdvanced(mu, sigma, limInf, limUp)
    z1 = (limInf - mu) / sigma
    z2 = (limUp - mu) / sigma
    prop = cdf(Normal(0, 1), z2) - cdf(Normal(0, 1), z1)
    return prop
end

# resultPrbably = calculateProbabilityAdvanced(152.00, 15.00, 116.00, 149.00)
# println(resultPrbably)
# println(round(resultPrbably * 100, digits=2))

function calculateAverage(sigma, percentaje, x)
    # Calculamos el valor de z correspondiente al percentil dado
    z = round(quantile(Normal(), percentaje / 100), digits=4)

    # Calculamos la vida útil media utilizando la fórmula
    media = z * sigma + x

    return media
end

resultAverage = calculateAverage(120, 10, 925)
println(resultAverage)
println(round(resultAverage, digits=1))

function calculateDeviation(x, average, percentaje)
    percentil = quantile(Normal(), percentaje)
    deviation = (average - x) / percentil
    return round(deviation, digits=2)
end

# resultDeviation = calculateDeviation(5.9, 6.9, 0.85)
# println(resultDeviation)

function prob_menos_de_k_exitos(n::Int, p::Float64, k::Int)
    μ = n * p
    σ = sqrt(n * p * (1 - p))
    z = (k - 0.5 - μ) / σ
    return cdf(Normal(), z)
end

function prob_max_k_exitos(n::Int, p::Float64, k::Int)
    μ = n * p
    σ = sqrt(n * p * (1 - p))
    z = (k - 0.5 - μ) / σ
    return 1 - cdf(Normal(), z)
end

function prob_mas_de_k_exitos(n::Int, p::Float64, k::Int)
    μ = n * p
    σ = sqrt(n * p * (1 - p))
    z = (k + 0.5 - μ) / σ
    return 1 - cdf(Normal(), z)
end

# resultProb = prob_menos_de_k_exitos(105, 0.71, 73)
# resultProb = prob_max_k_exitos(105, 0.71, 73)
# resultProb = prob_mas_de_k_exitos(60, 0.27, 13)
# println(resultProb)
# println(round(resultProb, digits=3))