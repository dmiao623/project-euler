import datetime

ans = 0
for year in range(1901, 2001):
	for month in range(1, 13):
		if datetime.date(year, month, 1).weekday() == 6:
			ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()