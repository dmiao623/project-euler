function solve(n::Int=124)
	local ms, m = 30000, 27
	while n > 0
		a, b, c = 1, 1, 1
		k = true
		for i ∈ 1:ms
			d = a+b+c
			d >= m && (d = d-m)
			d >= m && (d = d-m)
			a = b
			b = c
			c = d
			d == 0 && (k = false; break)
		end
		if k 
			n -= 1
			m += 2
		else
			m += 2
		end
	end
	m - 2
end

@time ans = solve()
open("answer.txt", "w") do af write(af, ans) end
println(ans)