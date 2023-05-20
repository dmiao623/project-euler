using HypergeometricFunctions

function solve()
	f1(x, n) = x ^ 2 / (2 * n)
	f2(x) = x * (0.5 - (2 * sqrt(x) * _₂F₁(-0.5, 1.5, 2.5, x)) / 3)

	target = (1 - 0.25 * π) / 4
	f2lb = f2(0.5)

	n = 1
	while true 
		x = (n - sqrt(2 * n) + 1) / (2 * n ^ 2 + 2) * n
		a = f1(x, n) + f2lb - f2(x)
		if a < 0.001 * target break end
		n += 1
	end
	return n
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end