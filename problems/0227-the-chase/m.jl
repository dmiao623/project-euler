function solve(n)
	c = Array{Float64}(undef, n, 4)
	c[1, :] = [0, 0, 0, 0]
	c[2, :] = [0, 8 / 17, 1 / 17, 18 / 17]
	for i ∈ 3:n
		a2, a3, a4 = c[i - 2, 2:4]
		b2, b3, b4 = c[i - 1, 2:4]
		k = a2 / 18 + 2 / 9
		c[i, 1] = k * b2 + a3 / 18
		c[i, 2] = k * b3 + 2 / 9
		c[i, 3] = 1 / 18
		c[i, 4] = k * b4 + a4 / 18 + 2
		println("$i: $(c[i, :])")
		k = 1 - c[i, 1]
		# c[i, 1] = 0
		c[i, 2:4] ./= k
		println("$i: $(c[i, :])")
	end

	f = Array{Float64}(undef, n + 1)
	f[n] = c[n, 4] * (1 - c[n, 3])
	f[n + 1] = 0
	for i ∈ n-1:-1:1
		f[i] = c[i, 2] * f[i + 1] + c[i, 3] * f[i + 2] + c[i, 4]
	end
	println(f)
	return f[n ÷ 2]
end

println(solve(100))