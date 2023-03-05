
struct Freq
    from
    to
end

struct FreqResult
    from
    to
    size
end

data = [10,8, 18, 8,8, 9, 3, 16, 18, 15, 5,9, 13, 0, 19, 7, 17]
freqsData = [Freq(0, 3), Freq(4, 7), Freq(8, 11), Freq(12, 15), Freq(16, 19)]

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