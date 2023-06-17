function solve()
	f = zeros(Int, 40, 10, 10, 10)
	for i ∈ 1:10 f[1,i,i,i] = 1 end
	for n ∈ 1:39, d ∈ 1:10, l ∈ 1:d, r ∈ d:10
		if d != 1  f[n+1,d-1,min(l,d-1),r] += f[n,d,l,r] end
		if d != 10 f[n+1,d+1,l,max(r,d+1)] += f[n,d,l,r] end
	end
	sum(f[1:40,2:10,1,10])
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end