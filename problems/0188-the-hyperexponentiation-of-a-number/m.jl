using Primes

function tetr(a, b, m)
    if b == 0 return 1 end
    return powermod(a, tetr(a, b - 1, Primes.totient(m)), m)
end

open("answer.txt", "w") do af
    write(af, string(tetr(1777, 1855, 10^8)))
end