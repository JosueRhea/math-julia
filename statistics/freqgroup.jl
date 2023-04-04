
struct Freq
    from
    to
end

data = [98,109,107,109,117,111,114,103,116,109,113,102,105,104,115]
freqsData = [Freq(97.5, 102.5), Freq(102.5, 107.5), Freq(107.5, 112.5), Freq(112.5, 117.5)]

calculate_midpoint(lowerLimit, upperLimit)::Float32 = (lowerLimit + upperLimit) / 2

function groupFreqs(problem, freqs)
    count = 0
    for freq in freqs
        nums = filter(x -> freq.from <= x <= freq.to, problem)
        len = length(nums)
        count += len
        midPoint = calculate_midpoint(freq.from, freq.to)
        println("Freq: $(freq.from) to $(freq.to): $nums and its length is $len and it's midpoint is $midPoint")
    end
    println("Total count: $count")
end

groupFreqs(data, freqsData)