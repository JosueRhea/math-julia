data = [3,4,4,1,3, 4,4,1,4,2,2,3,2,2,3,1,4,1,1,4]
freqsData = [1,2,3,4]

function groupFreqs(problem, freqs)
    count = 0
    for freq in freqs
        nums = filter(x -> freq == x, problem)
        len = length(nums)
        count += len
        println("Freq: $(freq): $nums and its length is $len")
    end
    println("Total count: $count")
end

groupFreqs(data, freqsData)