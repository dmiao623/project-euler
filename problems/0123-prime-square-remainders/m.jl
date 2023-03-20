function solve(n) 
	k = 1
	open("../../library/sequences/primes.txt", "r") do df
		while true 
			p = parse(Int64, readline(df))
			if k % 2 == 1
				r = 2 * k * p % (p * p)
				if r > n return k end
			end
			k += 1
		end
	end
end

open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 10)))
end