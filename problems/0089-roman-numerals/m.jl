using RomanNumerals

function solve()
	open("data.txt", "r") do df
		return sum(length(x) - length(RomanNumeral(x)) for x ∈ split(read(df, String), "\n"))
	end
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end