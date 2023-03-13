struct Case
    valorOfX
    pOfX
end

function calculate(cases::Array{Case})
    hopeOfX = sum(x.valorOfX * x.pOfX for x in cases)
    varianceOfX = sum(((x.valorOfX - hopeOfX)^2) * x.pOfX for x in cases)
    println("Hope is $hopeOfX and variance is $varianceOfX")
end

problem = [Case(20,0.40),Case(30,0.15),Case(40,0.15), Case(50,0.15),Case(60,0.10), Case(70,0.05)]

calculate(problem)