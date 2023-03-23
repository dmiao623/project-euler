function solve(n)
	f = fill(false, n)
	f[1] = true
	for i ∈ 1:n
		if !f[i] continue end
		if i * 2 <= n f[i * 2] = true end
		if i * 5 <= n f[i * 5] = true end
	end

	r(i, j) = j * log(i / j) 

	j, s = 1, 0
	for i ∈ 5:n
		while r(i, j + 1) > r(i, j) j += 1 end
		s += f[j ÷ gcd(i, j)] ? -i : i
	end
	s
end

open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 4)))
end