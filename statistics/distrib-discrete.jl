struct Case
    valorOfX
    pOfX
end

function getPossibleResults(cases::Array{Case}, missing)
    totalAsigned = sum(x.pOfX for x in cases)
    amount = 1 - totalAsigned

    println("Result: $(round(amount, digits=2))")
end

asignedVals = [Case(1,0.28), Case(3,0.10),Case(5,0.30)]
missingValsOfP = [-2, 5]

getPossibleResults(asignedVals, missingValsOfP)