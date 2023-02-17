def check_valid(grid, x, y, n):
	for yy in range(9):
		if grid[x][yy] == n:
			return False
	for xx in range(9):
		if grid[xx][y] == n:
			return False
	sx, sy = (x // 3) * 3, (y // 3) * 3
	for xx in range(sx, sx + 3):
		for yy in range(sy, sy + 3):
			if grid[xx][yy] == n:
				return False
	return True

def generate(grid, x, y):
	if y == 9:
		x += 1
		y = 0
	if x == 9:
		return True
	if grid[x][y] != 0:
		return generate(grid, x, y + 1)
	for n in range(1, 10):
		if check_valid(grid, x, y, n):
			grid[x][y] = n
			if generate(grid, x, y + 1):
				return True
			grid[x][y] = 0
	return False

def solve(grid):
	assert generate(grid, 0, 0)
	return grid

ans = 0
with open('data.txt', 'r') as df:
	for t in range(50):
		s = df.readline()
		grid = [[int(x) for x in [*df.readline()[:-1]]] for i in range(9)]
		solve(grid)

		# print(s)
		# for i in range(9):
		# 	print(grid[i])
		# print()
		ans += grid[0][0] * 100 + grid[0][1] * 10 + grid[0][2]
	df.close()
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()