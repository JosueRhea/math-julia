struct CaseType 
    from::Float32
    to::Float32
    freq::Float32
end 

struct CaseTypeWithMiddlePoint
    from::Float32
    to::Float32
    freq::Float32
    mid_point::Float32
end 

calculate_midpoint(lowerLimit, upperLimit)::Float32 = (lowerLimit + upperLimit) / 2

function find_deviation(data::Array{CaseType}, num)
  with_middle_point = map(x -> CaseTypeWithMiddlePoint(x.from, x.to, x.freq, calculate_midpoint(x.from, x.to)), data)

  result::Float32 = 0
  for item in with_middle_point
    result += (item.freq * item.mid_point) / num
  end

  println(result)
end

deviation_data = [CaseType(200,  400, 3),CaseType(400,  600, 2),CaseType(600,  800, 3),CaseType(800,  1000, 5),CaseType(1000,  1200, 2)]

find_deviation(deviation_data, 15)
