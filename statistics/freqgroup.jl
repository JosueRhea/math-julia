
struct Freq
    from
    to
end

data = [83,69,82,85,87,67,68,83,70,81,87,71,80,80,70,86,74,70]
freqsData = [Freq(65.5, 71.5), Freq(71.5, 77.5), Freq(77.5, 83.5), Freq(83.5, 89.5)]

function groupFreqs(problem, freqs)
    for freq in freqs
        nums = filter(x -> freq.from <= x < freq.to, problem)
        len = length(nums)
        println("Freq: $(freq.from) to $(freq.to): $nums and its length is $len")
    end
end

groupFreqs(data, freqsData)