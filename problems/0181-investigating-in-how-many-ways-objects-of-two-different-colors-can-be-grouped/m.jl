function solve()
	n,m = 60,40
	n1,m1=n+1,m+1
	decompose(x) = (x%n1 => x÷n1)

	f = zeros(Int, (n1, m1, n1*m1+1))
	f[1,1,:] .= 1
	for i ∈ 0:n, j ∈ 0:m, k ∈ 1:n1*m1
		i₀, j₀ = decompose(k)
		f[i+1,j+1,k+1] = f[i+1,j+1,k]
		if i₀ > i || j₀ > j continue end
		f[i+1,j+1,k+1] += f[i-i₀+1,j-j₀+1,k+1]
		# println("$i $j $k ($i₀ $j₀): $(f[i+1,j+1,k+1])")
	end
	f[n1,m1,n1*m1]
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end