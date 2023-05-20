using Random
using Distributions

function compute(n, πg = 10, πi = 10^6, πt = 10^5, πΔt = 0.99, πr = 10^-2)
	value(d) = prod(d[i] ^ i for i ∈ 1:n)
		
	m = 0
	for g ∈ 1:πg
		t = πt
		ζs = fill(1.0, n)
		ζv = value(ζs)
		for i ∈ 1:πi
			ρj = rand(1:n-1)
			ρv = rand(Uniform(-πr, πr))

			νs = copy(ζs)
			νs[ρj] += ρv
			νs[ρj + 1] -= ρv
			if νs[ρj] < 0 || νs[ρj + 1] < 0 
				continue
			end
			νv = value(νs)

			if νv > ζv || exp((νv - ζv) / t) > rand(Float64)
				ζs, ζv = νs, νv
				m = max(m, ζv)
			end

			t *= πΔt
		end
		println("$ζs $ζv")
	end

	return m
end

function solve()
	rr = sum(floor(Int, compute(i, mg = 10, ni = 10^5) for i ∈ 2:12))
	rr
end

print(solve())