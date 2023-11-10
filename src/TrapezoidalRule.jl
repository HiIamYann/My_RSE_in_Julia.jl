module TrapezoidalRule
export trapezoidal


function trapezoidal(f,a,b,N)
	dx = (b-a)/N
	x_range = [a+i*dx for i in 0:N]
    	L = length(f(a))
	sum = [0. for i in 1:L]
	for k in 2:N+1
		sum .+= (f(x_range[k-1]).+f(x_range[k]))./2*dx
	end
	return sum
end

function test1(x)
    return cos(200*x)
end

function test2(z::Complex{Int64})
    return cos(z)/z
end

function test2_alt(ϕ)
    return 
end

function test3(x)
    return [1,x,x^2,x^3]
end

function test4(x)
    return x*exp(x)
end

end # module TrapezoidalRule
