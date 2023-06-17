function solve()
	κ, λ = 10^3, 1
	open("../../library/sequences/num-squared-divisors.txt") do df
		while parse(Int, readline(df)) <= 2*κ-1 λ += 1 end
	end
	λ
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end