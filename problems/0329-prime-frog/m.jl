using Primes

function solve()
	s = [x == 'P' for x ∈ "PPPPNNPPPNPPNPN"]
	k = [isprime(x) for x ∈ 1:500]
	f = zeros(Rational{Int128}, (15, 500))
	for j ∈ 1:500 f[1,j] = (s[1] == k[j] ? 2//3 : 1//3) // 500 end
	for i ∈ 2:15
		for j ∈ 3:498
			f[i,j] = ((f[i-1,j-1] + f[i-1,j+1]) // 2) * (s[i] == k[j] ? 2//3 : 1//3)
		end
		f[i,1] = f[i-1,2] // 2 * (s[i] == k[1] ? 2//3 : 1//3)
		f[i,500] = f[i-1,499] // 2 * (s[i] == k[500] ? 2//3 : 1//3)
		f[i,2] = (f[i-1,1] + f[i-1,3] // 2) * (s[i] == k[2] ? 2//3 : 1//3)
		f[i,499] = (f[i-1,500] + f[i-1,498] // 2) * (s[i] == k[499] ? 2//3 : 1//3)
	end
	s = sum(f[15,j] for j ∈ 1:500)
	string(numerator(s)) * "/" * string(denominator(s))
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end