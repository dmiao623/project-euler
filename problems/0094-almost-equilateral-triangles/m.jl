is_square(x::Int) = floor(Int, sqrt(x))^2 == x

function solve()
	n = 10^9
	ans = 0
	for x ∈ 2:n÷3
		r = (3*x+1)*(x-1)
		if is_square(r) 
			s = floor(Int, sqrt(r))
			s*(x+1)%4==0 && (ans += 3*x+1)
			# println("$x $x $(x+1) ($(3x+1) $(x-1)) --> $s")
		end
		r = (3*x-1)*(x+1)
		if is_square(r)
			s = floor(Int, sqrt(r))
			s*(x+1)%4==0 && (ans += 3*x-1)
			# println("$x $x $(x-1) ($(3x-1) $(x+1)) --> $s")
		end
	end
	ans
end

@time open("answer.txt", "w") do af write(af, string(solve())) end