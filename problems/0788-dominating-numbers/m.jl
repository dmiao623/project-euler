using Mods

function solve(n=2022, ζ=10^9+7) 
	f, g, h = ones(Mod{ζ}, n+1), ones(Mod{ζ}, n+1), ones(Mod{ζ}, n+1)
	for i ∈ 2:n
		f[i] = (i - 1) * f[i - 1]
		g[i] = 1 / f[i]
		h[i] = 9 * h[i - 1]
	end
	c(i, j) = (f[i+1] * g[j+1] * g[i-j+1])

	r = Mod{ζ}(0)
	for l ∈ 1:n, k ∈ 0:(l-1)÷2
		r += 9 * c(l - 1, k) * h[k + 1]
		r += k == 0 ? 0 : c(l - 1, k - 1) * h[k + 2]
	end

	value(r)
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)