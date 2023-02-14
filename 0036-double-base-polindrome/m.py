# https://stackoverflow.com/questions/2267362/how-to-convert-an-integer-to-a-string-in-any-base
def numberToBase(n, b):
    if n == 0:
        return [0]
    digits = []
    while n:
        digits.append(int(n % b))
        n //= b
    return digits[::-1]

s = 0
for i in range(0, 1000000):
    j = numberToBase(i, 2)
    if str(i) == str(i)[::-1] and j == j[::-1]:
        s += i
with open('answer.txt', 'w+') as af: 
    print(s, file = af)
    af.close()