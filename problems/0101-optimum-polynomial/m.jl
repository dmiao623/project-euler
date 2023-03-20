using Polynomials, Formatting

function solve(p)
	d = length(p)
	x = range(1, d)
	y = @. p(x)
	r = 0
	for i in 1:d-1
		k = fit(x[1:i], y[1:i], i - 1)
		r += k(i + 1)
	end
	r
end

open("answer.txt", "w") do af
	write(af, string(format(solve(Polynomial([1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1])))))
end