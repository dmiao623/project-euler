suiteMap = {'C': 0, 'S': 1, 'H': 2, 'D': 3}
valueMap = {'2': 0, '3': 1, '4': 2, '5': 3, '6': 4, '7': 5, '8': 6, '9': 7, 'T': 8, 'J': 9, 'Q': 10, 'K': 11, 'A': 12}

def createHand(cardList):
	return sorted([(valueMap[card[0]], suiteMap[card[1]]) for card in cardList])

def createFreq(hand):
	freq = [[False for i in range(13)] for j in range(4)]
	for value, suite in hand:
		freq[suite][value] = True
	return freq

def maxCard(hand):
	return hand[-1][0]

def isOnePair(freq):
	for value in range(12, -1, -1):
		c = 0
		for suite in range(4):
			if freq[suite][value]:
				c += 1
		if c >= 2:
			return value
	return -1

def isTwoPairs(freq):
	r = 0
	k = -1
	for value in range(13):
		c = 0
		for suite in range(4):
			if freq[suite][value]:
				c += 1
		if c >= 2:
			r += 1
			k = c
	return k if r == 2 else -1

def isThreeOfKind(freq):
	for value in range(12, -1, -1):
		c = 0
		for suite in range(4):
			if freq[suite][value]:
				c += 1
		if c >= 3:
			return value
	return -1

def isFourOfKind(freq):
	for value in range(12, -1, -1):
		c = 0
		for suite in range(4):
			if freq[suite][value]:
				c += 1
		if c == 4:
			return value
	return -1

def isFullHouse(hand, freq):
	return hand[-1][0] if isTwoPairs(freq) != -1 and isThreeOfKind(freq) != -1 else -1

def isStraight(hand):
	for i in range(4):
		if hand[i][0] != hand[i + 1][0] - 1:
			return -1
	return hand[-1][0]

def isFlush(hand):
	for i in range(4):
		if hand[i][1] != hand[i + 1][1]:
			return -1
	return hand[-1][0]

def isRoyal(hand):
	return 12 if hand[0][0] == valueMap['T'] and isStraight(hand) else -1

def isStraightFlush(hand):
	return hand[-1][0] if isStraight(hand) != -1 and isFlush(hand) != -1 else -1

def isRoyalFlush(hand):
	return 12 if isRoyal(hand) != -1 and isFlush(hand) != -1 else -1

def rank(hand):
	freq = createFreq(hand)

	rf = isRoyalFlush(hand)
	sf = isRoyalFlush(hand)
	fk = isFourOfKind(freq)
	fh = isFullHouse(hand, freq)
	fl = isFlush(hand)
	st = isStraight(hand)
	tk = isThreeOfKind(freq)
	tp = isTwoPairs(freq)
	op = isOnePair(freq)
	hc = maxCard(hand)

	if rf != -1:
		return (9, rf)
	elif sf != -1:
		return (8, sf)
	elif fk != -1:
		return (7, fk)
	elif fh != -1:
		return (6, fh)
	elif fl != -1:
		return (5, fl)
	elif st != -1:
		return (4, st)
	elif tk != -1:
		return (3, tk)
	elif tp != -1:
		return (2, tp)
	elif op != -1:
		return (1, op)
	else:
		return (0, hc)

with open('data.txt', 'r') as df:
	cardLists = [l.split() for l in df]
	df.close()
ans = 0
for cardList in cardLists:
	aList, bList = cardList[:5], cardList[5:]
	aHand, bHand = createHand(aList), createHand(bList)
	if rank(aHand) > rank(bHand):
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()