# In this problem, we are given the mean and standard deviation of a normal distribution that represents the life span of a battery. The rule of thumb for normal distributions is known as the empirical rule or 68-95-99.7 rule, which states that:

# About 68% of the data falls within one standard deviation of the mean.
# About 95% of the data falls within two standard deviations of the mean.
# About 99.7% of the data falls within three standard deviations of the mean.
# Therefore, to answer the three questions:

# To determine the range of values that includes about 68% of the batteries, we use one standard deviation on either side of the mean, which is calculated by adding and subtracting the standard deviation from the mean (19.0):
# Lower limit = 19.0 - 1(1.2) = 17.8
# Upper limit = 19.0 + 1(1.2) = 20.2
# To determine the range of values that includes about 95% of the batteries, we use two standard deviations on either side of the mean:
# Lower limit = 19.0 - 2(1.2) = 16.6
# Upper limit = 19.0 + 2(1.2) = 21.4
# To determine the range of values that includes almost all of the batteries (99.7%), we use three standard deviations on either side of the mean:
# Lower limit = 19.0 - 3(1.2) = 15.4
# Upper limit = 19.0 + 3(1.2) = 22.6
# Therefore, in the answer 1 we use one standard deviation (⨦1) to cover about 68% of the data, in answer 2 we use two standard deviations (⨦2) to cover about 95% of the data, and in answer 3 we use three standard deviations (⨦3) to cover almost all of the data (99.7%).

function getLimits(ȷ, μ, num)
    ȷLowerLimit = ȷ - num * μ
    ȷUpperLimit = ȷ + num * μ
    if num == 1
        println("65% is between $ȷLowerLimit and $ȷUpperLimit")
    end
    if num == 2
        println("95% is between $ȷLowerLimit and $ȷUpperLimit")
    end
    if num == 3
        println("99.7% is between $ȷLowerLimit and $ȷUpperLimit")
    end
end
function calculateProbability(ȷ, μ)
    getLimits(ȷ, μ, 1)
    getLimits(ȷ, μ, 2)
    getLimits(ȷ, μ, 3)
end

calculateProbability(1140,300)