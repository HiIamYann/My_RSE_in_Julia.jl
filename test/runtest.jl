module test

using TrapezoidalRule

function test3(x)
    return [1,x,x^2,x^3]

result = [2,2,8/3,4]

x = trapezoidal(test3, 0, 2, 1000)

if max(x.-result) < 0.1
    print("Test function three is accurate to .1")
