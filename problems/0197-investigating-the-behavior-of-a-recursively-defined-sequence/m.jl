f(x) = floor(2 ^ (30.403243784 - x ^ 2)) * 10 ^ -9

function solve()
	x::Float64 = -1
	for i ∈ 1:3000 x = f(x) end
	x + f(x)
end

open("answer.txt", "w") do af write(af, string(solve())) end