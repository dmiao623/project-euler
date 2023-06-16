function solve()
	open("../../library/sequences/num-divisors.txt", "r") do df
		δ = [parse(Int, readline(df))÷2 for i ∈ 1:10^6]
		τ = [i%4==0 ? δ[i÷4] : 0 for i ∈ 1:10^6]
		sum([count(x->(x==k), τ) for k ∈ 1:10])
	end 
end	

open("answer.txt", "w") do af
	write(af, string(solve()))
end