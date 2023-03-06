
struct Freq
    from
    to
end

data = [79,78, 66, 78, 84, 72, 78, 70, 72, 81, 70]
freqsData = [Freq(66, 71), Freq(72, 77), Freq(78, 83), Freq(84, 89)]

function groupFreqs(problem, freqs)
    count = 0
    for freq in freqs
        nums = filter(x -> freq.from <= x <= freq.to, problem)
        len = length(nums)
        count += len
        println("Freq: $(freq.from) to $(freq.to): $nums and its length is $len")
    end
    println("Total count: $count")
end

groupFreqs(data, freqsData)