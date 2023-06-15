function solve()
	r, b = 6, 15
	while r + b <= 10^12
		r = 2b+r-1
		b = b+2r
	end
	b
end

open("answer.txt", "w") do af
	write(af, solve())
end