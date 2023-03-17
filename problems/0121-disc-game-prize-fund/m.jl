using Memoization

@memoize function f(i, j)
	if i == 0 return j == 0 ? 1.0 : 0.0 end
	f(i - 1, j) * (i / (i + 1)) + (j == 0 ? 0.0 : f(i - 1, j - 1) / (i + 1))
end

function solve(n)
	p = 0.0
	for i in 0:n
		p += i > n - i ? f(n, i) : 0.0
	end
	return convert(Int32, floor(1 / p))
end

open("answer.txt", "w") do df
	write(df, string(solve(15)))
end