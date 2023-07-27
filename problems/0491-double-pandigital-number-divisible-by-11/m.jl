function solve()
	local f = zeros(Int, 3^10, 11)
	for i ∈ 1:9 f[3^i+1, i+1] = 1 end
	for i ∈ 0:3^10-1, j ∈ 0:10, k ∈ 0:9
		(i÷3^k)%3 == 2 && continue
		f[i+3^k+1,(j*10+k)%11+1] += f[i+1,j+1]
	end
	string(f[3^10,1])
end

@time ans = solve()
open("answer.txt", "w") do af write(af, ans) end
println(ans)