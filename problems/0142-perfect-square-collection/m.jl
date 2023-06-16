square(x) = (x >= 0 && x == floor(Int, sqrt(x))^2)

function solve()
	κ, σ = 10_000, 10^18
	for a ∈ 1:κ
		for b ∈ (a%2==0 ? 2 : 1):2:κ
			x, y = (a^2+b^2)÷2, (a^2-b^2)÷2
			for c ∈ ceil(Int, sqrt(x)):κ
				z = c^2-x
				if z >= y || x+y+z>σ break end
				if square(x-z) && square(y+z) && square(y-z) 
					σ=x+y+z
					break
				end
			end
		end
	end
	σ
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end