# Problem 35
from math import sqrt
from itertools import count, islice
def isPrime(n):
    return n > 1 and all(n % i for i in islice(count(2), int(sqrt(n) - 1)))
ncirc = 4
for i in range(10, 1000000):
    ite = 0
    n = i
    while isPrime(n):
        a = list(map(int, str(n)))
        n = a[-1:] + a[:-1]
        n = int("".join([str(i) for i in n]))
        ite += 1
        if ite == len(str(n)):
            ncirc += 1
            break
