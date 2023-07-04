using Mods

function solve()
	n = 10^7
	z = 10^9+7
	k = floor(Int, sqrt(n))

	pts = Vector{Pair{Int, Int}}([n => n])
	for a ∈ 1:k, b ∈ 1:k
		c = a^2+b^2
		round(Int, sqrt(c))^2 == c && push!(pts, a^2 => b^2)
	end


	fac, inv = zeros(Mod{z}, 2*n+1), zeros(Mod{z}, 2*n+1)
	fac[1] = inv[1] = 1
	for i ∈ 1:2*n
		fac[i+1] = fac[i]*i
		inv[i+1] = 1/fac[i+1]
	end

	comb(n,k) = fac[n+1] * inv[n-k+1] * inv[k+1]

	sort!(pts)
	f = zeros(Mod{z}, length(pts))
	for (i, (a,b)) ∈ enumerate(pts)
		f[i] = comb(a+b,a)
		for j ∈ 1:i-1
			(x,y) = pts[j]
			x <= a && y <= b && (f[i] -= f[j] * comb(a-x+b-y,a-x))
		end
	end
	value(last(f))
end

@time open("answer.txt", "w") do af write(af, string(solve())) end