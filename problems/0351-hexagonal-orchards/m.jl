function solve() 
	n, s = 10^8, 0
	open("../../library/sequences/euler-totient.txt", "r") do df
		for i ∈ 1:n s += parse(Int, readline(df)) end
	end
	6 * (n*(n+1)÷2 - s)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end