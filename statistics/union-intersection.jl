struct Event 
    value
    negation
end

function calculateUnionIntersectionIndEvents(a::Event, b::Event)
    parsedA = a.negation ? 1 - a.value : a.value
    parsedB = b.negation ? 1 - b.value : b.value
    ∩ = parsedA * parsedB
    ∪ = parsedA + parsedB - ∩

    println("P(A ∩ B) = $(round(∩,digits=2)), P(A ∪ B) = $(round(∪, digits=2))")
end

# calculateUnionIntersectionIndEvents(Event(0.60, false), Event(0.70, true))

# Mutually exclude events
function AHappenBNotOrABHappen(a1::Event, b1::Event, a2::Event, b2::Event)
    parsedA1 = a1.negation ? 1 - a1.value : a1.value
    parsedB1 = b1.negation ? 1 - b1.value : b1.value
    parsedA2 = a2.negation ? 1 - a2.value : a2.value
    parsedB2 = b2.negation ? 1 - b2.value : b2.value

    result = (parsedA1 * parsedB1) + (parsedA2 * parsedB2)
    println(result)
end

# AHappenBNotOrABHappen(Event(0.6, false), Event(0.08, true), Event(0.6, false), Event(0.08, false))
function AHappenBNot(a1::Event, b1::Event)
    parsedA1 = a1.negation ? 1 - a1.value : a1.value
    parsedB1 = b1.negation ? 1 - b1.value : b1.value

    result = (parsedA1 * parsedB1)
    println(result)
end

# AHappenBNot(Event(0.25,true), Event(0.1, false))