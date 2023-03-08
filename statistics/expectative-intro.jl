struct Case
    name
    num
end

problem = [Case("a", 22),Case("b", 45), Case("c", 24),Case("d", 34)]

function getExpectative(cases::Array{Case}, query::String, expectative::Int64)
    total = sum(x.num for x in cases)
    query_array = split(query, ",")  # Split query string into an array of strings
    findedQuery = filter(x -> x.name in query_array, cases)

    result = (sum(x.num for x in findedQuery) * expectative) / total
    println("Results is: $(round(result))")
end


getExpectative(problem, "b", 800)