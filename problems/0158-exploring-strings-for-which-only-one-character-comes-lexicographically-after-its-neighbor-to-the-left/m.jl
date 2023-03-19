function solve(n) 
	ret = 0
	for a in 1:26
		for b in a+1:26
			for l in 0:n, r in 0:n
				m = n - 2 - l - r
				if m < 0 continue end
				ret += binomial(a - 1, l) * binomial(26 - b, r) * binomial(b - a - 1, m) * 2 ^ m
			end
		end
	end
	return ret
end

open("answer.txt", "ww") do af
	write(af, string(maximum([solve(i) for i in range(1, 26)])))
end