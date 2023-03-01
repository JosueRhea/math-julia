mutable struct Case 
    qtty::Float32
    prbly::Float32
end

function findAverageAndVariance(cases::Array{Case})
    μ = 0
    for case in cases
        μ += case.qtty * case.prbly
    end
    μ = round(μ, digits=2)
    println("μ ≌ ",μ)

    ρ = map(n -> round((n.qtty - μ) ^ 2, digits=2), cases)
    println("μ - ρ² ≌ ", ρ)

    α::Array{Float32} = []
    for (i, x) in enumerate(ρ)
        push!(α, round(x * cases[i].prbly, digits=3))
    end
    println("α ≌ ", α)

    α² = sum(α)
    println("√α² ≌ √", round(α², digits = 3))

    √α = round(sqrt(α²), digits=3)

    println("α ≌ ", √α)
end

problem = [Case(5, 0.10), Case(10, 0.30), Case(15, 0.20), Case(20, 0.40)]

findAverageAndVariance(problem)
