function predict(target, total, expected)
    total = (target * expected) / total
    println("Predicted total: ", total)
end

predict(18, 40, 20)