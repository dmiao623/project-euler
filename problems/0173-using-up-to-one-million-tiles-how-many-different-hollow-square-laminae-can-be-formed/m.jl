function solve()
	r = 0
	for b ∈ 1:250000
		a = trunc(Int, sqrt(1000000 + b * b))
		r += max(0, a ÷ 2 + (a % 2) * (b % 2) - (b + 1) ÷ 2)
	end
	r
end

open("answer.txt", "w") do af
    write(af, string(solve()))
end