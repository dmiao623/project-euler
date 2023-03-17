function solve(m)
	ans = 0
	for a in 1:m, b in 1:m, c in 1:m, d in 1:m
		k::Int32 = (a * b + b * c + c * d + d * a - gcd(a, b) - gcd(b, c) - gcd(c, d) - gcd(d, a)) / 2 + 1
		s = trunc(Int, sqrt(k) + 0.5)
		if s ^ 2 == k
			ans += 1
		end 
	end
	return ans
end

open("answer.txt", "w") do af
    write(af, string(solve(100)))
end