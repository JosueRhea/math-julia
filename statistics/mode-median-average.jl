function mode(cases)
    n = length(cases)
    counts = Dict{}()
    for x in cases
        counts[x] = get(counts, x, 0) + 1
    end
    mode_count = maximum(values(counts))
    mode_values = [k for (k, v) in counts if v == mode_count]
    if length(mode_values) == n
        println("Mode: All values in the array are unique")
        return []
    elseif isempty(mode_values)
        println("Mode: No mode found")
        return []
    else
        return mode_values
    end
end

function median(arr)
    n = length(arr)
    sorted_arr = sort(arr)
    if isodd(n)
        return sorted_arr[(n+1) ÷ 2]
    else
        return (sorted_arr[n ÷ 2] + sorted_arr[(n ÷ 2) + 1]) / 2
    end
end

function average(cases)
    n = length(cases)
    if n == 0
        error("Cannot find average of an empty array")
    else
        return sum(cases) / n
    end
end

problem = [142,145,149,172,156,158,168,163,168,145,161,162]

a = average(problem)
md = median(problem)
m = mode(problem)
println("Average is: $(round(a, digits=2))")
println("Median is: $md")
println("Mode is: $m")