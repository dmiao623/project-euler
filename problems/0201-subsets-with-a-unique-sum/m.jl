function solve()
	κ = sum(i^2 for i ∈ 1:100)+1
	f = zeros(Int32, (101, 51, κ))

	f[1,1,1]=1
	for i ∈ 2:101
		w = (i-1)^2
		b = sum(j^2 for j ∈ 1:i-1)
		for j ∈ max(1,51-(101-i)):51, k ∈ 1:b+1
			f[i,j,k] = f[i-1,j,k]+(k-1>=w&&j>1 ? f[i-1,j-1,k-w] : 0)
		end 
	end
	sum(f[101,51,i]==1 ? i-1 : 0 for i ∈ 2:κ)
end

open("answer.txt", "w") do af write(af, string(solve())) end