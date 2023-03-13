@enum Token begin
    P_OF_A = 1
    P_OF_B = 2
    AND = 3
end

function lexer(source::AbstractString)
    tokens = []
    i = 1
    while i <= length(source)
        if source[i] == 'A'
            push!(tokens, Token(1))
            i += 1
        elseif source[i] == 'B'
            push!(tokens, Token(2))
            i += 1
        elseif source[i] == 'a' && i+2 <= length(source) && source[i+1:i+2] == "nd"
            push!(tokens, Token(3))
            i += 3
        else
            i += 1
        end
    end
    return tokens
end

function parser(tokens, values)
    parsed = []
    for token in tokens
        if token == Token(1)
            push!(parsed, values["A"])
        elseif token == Token(2)
            push!(parsed, values["B"])
        elseif token == Token(3)
            push!(parsed, Token(3))
        end
    end
    return parsed
end

function calculator(parsedTokens)
    result = 0
    for token in parsedTokens
        
    end
end

# Test the lexer with your example expression
values = Dict(
    "A" => 0.30,
    "B" => 0.50
)
source = "A and B"
tokens = lexer(source)
parsed = parser(tokens, values)

println(tokens)
println(parsed)

