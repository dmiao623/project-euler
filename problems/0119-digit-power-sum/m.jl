function sum(n) 
	s = 0
	while n != 0
		s += n % 10
		n ÷= 10
	end
	s
end

function solve(n)
	bs = 300
	a = []
	for s ∈ 1:bs
		r = 1
		for i ∈ 0:15
			r *= s
			k = sum(r)
			if r < 10 continue end
			if k == s push!(a, r) end
		end
	end
	sort!(a)
	return a[n]
end

open("answer.txt", "w") do af
	write(af, string(solve(30)))
end