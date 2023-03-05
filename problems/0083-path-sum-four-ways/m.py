from queue import PriorityQueue

n = 80
inf = 10 ** 18
with open('data.txt', 'r') as df:
	mat = [list(map(int, df.readline().split(','))) for i in range(n)]
	df.close()

dc = [(-1, 0), (1, 0), (0, -1), (0, 1)]
dis = [[inf for i in range(n)] for j in range(n)]
que = PriorityQueue()

dis[0][0] = mat[0][0]
que.put((dis[0][0], 0, 0))
while not que.empty():
	d, ux, uy = que.get()
	if d != dis[ux][uy]:
		continue
	for dk in dc:
		dx, dy = dk
		nx, ny = ux + dx, uy + dy
		if 0 <= nx and nx < n and 0 <= ny and ny < n and d + mat[nx][ny] < dis[nx][ny]:
			dis[nx][ny] = d + mat[nx][ny]
			que.put((dis[nx][ny], nx, ny))
with open('answer.txt', 'w+') as af:
	print(dis[n - 1][n - 1], file = af)