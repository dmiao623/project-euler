function solve(n)
	function reverse(x)
		r = 0
		while x != 0
			r = r * 10 + x % 10
			x ÷= 10
		end
		r
	end

	function all_odd(x)
		while x != 0
			if x % 2 == 0 return false end
			x ÷= 10
		end
		true
	end

	r = 0
	d = 1
	while 
	for d ∈ 1:n
		if d % 10 == 0 continue end
		r += all_odd(d + reverse(copy(d))) ? 1 : 0
	end
	r
end

open("answer.txt", "w") as af
	write(af, solve(10 ^ 9))
end