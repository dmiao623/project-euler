function solve()
	s = zeros(Int128, 4^10)
	s[1] = 1
	for i ∈ 1:4^10-1
		x = i
		for d ∈ 0:9
			σ = x % 4
			x ÷= 4
			s[i+1] += σ > 0 ? s[i-4^d+1] : 0
		end
	end

	ans::Int128 = 0
	t = zeros(Int128, 4^10)
	for i ∈ 0:4^10-1
		x, k = i ÷ 4, i % 4
		for d ∈ 1:9
			σ = x % 4
			x ÷= 4
			k += σ
			t[i+1] += σ > 0 ? s[i-4^d+1] : 0
		end
		k == 18 && (ans += t[i+1])
	end

	ans
end

open("answer.txt", "w") do af write(af, string(solve())) end