
struct Freq
    from
    to
end

struct FreqResult
    from
    to
    size
end

data = [103,117,106,110,95,108,115,102,113,112,105,114,109,99,103,116,118,100]
freqsData = [Freq(94.5, 100.5), Freq(100.5, 106.5), Freq(106.5, 112.5), Freq(112.5, 118.5)]

function groupFreqs(problem, freqs)
    freqsParsed= []
    for freq in freqs
        nums = filter(x -> freq.from <= x <= freq.to, problem)
        push!(freqsParsed, FreqResult(freq.from, freq.to, length(nums)))
    end

    println("Cases: $(length(problem))")
    for freq in freqsParsed
        println("Freq $(freq.from) to $(freq.to) with size $(freq.size): $(round(freq.size / length(problem), digits=2))")
    end
end

groupFreqs(data, freqsData)