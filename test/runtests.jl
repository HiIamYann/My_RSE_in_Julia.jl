using TrapezoidalRule

function test3(x)
    return [1,x,x^2,x^3]
end

result = [2,2,8/3,4]

x = trapezoidal(test3, 0, 2, 1000)

if max(abs(x[1]-result[1]),abs(x[2]-result[2]),abs(x[3]-result[3]),abs(x[4]-result[4])) < 0.1
    print("Test function three is accurate to .1")
end
