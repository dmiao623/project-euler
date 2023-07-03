function isqrt(x::Int128)
    s = convert(Int128,trunc(sqrt(x)))
    (s + div(x,s)) >> 1
end

is_square(x::Int128) = isqrt(x)^2==x 

function solve()
	n = 64000000-1
	ans = 0

	open("../../library/sequences/least-factor.txt") do df
		lf = zeros(Int, n)
		f, g = zeros(Int128, n), ones(Int128, n)

		f[1] = 1
		ans = 1
		lf[1] = parse(Int, readline(df))
		for i ∈ 2:n
			lf[i] = parse(Int, readline(df))
			j = i ÷ lf[i]
			if lf[j] == lf[i]
				f[i] = f[j] * lf[i]^2 + 1
				g[i] = g[j]
			else
				f[i] = lf[i]^2 + 1
				g[i] = g[j] * f[j]
			end
			ans += is_square(g[i] * f[i]) ? i : 0
		end
	end
	ans
end

open("answer.txt", "w") do af write(af, string(solve())) end