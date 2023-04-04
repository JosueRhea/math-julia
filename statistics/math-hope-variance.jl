struct Case
    valorOfX
    pOfX
end

function calculate(cases::Array{Case})
    hopeOfX = sum(x.valorOfX * x.pOfX for x in cases)
    varianceOfX = sum(((x.valorOfX - hopeOfX)^2) * x.pOfX for x in cases)
    println("Hope is $hopeOfX and variance is $varianceOfX")
end

problem = [Case(-10,0.05),Case(0,0.20),Case(10,0.15), Case(20,0.15),Case(30,0.35), Case(40,0.10)]

calculate(problem)