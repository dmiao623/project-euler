function solve(n)
	r = 0
	for d in 2:n
		lb = d ÷ 3 + 1
		rb = (d + 1) ÷ 2 - 1
		for i in lb:rb
			if gcd(i, d) == 1 r += 1 end
		end
	end
	r
end

open("answer.txt", "w") do af
	write(af, string(solve(12000)))
end