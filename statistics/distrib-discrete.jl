struct Case
    valorOfX
    pOfX
end

function getPossibleResults(cases::Array{Case}, missing)
    totalAsigned = sum(x.pOfX for x in cases)
    amount = 1 - totalAsigned

    println("Result: $(round(amount, digits=2))")
end

asignedVals = [Case(-4,0.30), Case(4,0.20),Case(6,0.27)]
missingValsOfP = [-2, 5]

getPossibleResults(asignedVals, missingValsOfP)