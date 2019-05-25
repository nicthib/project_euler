# Problem 12
from functools import reduce
def factors(n):
    return set(reduce(list.__add__,
                ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))
n = 0
a = 1
i = 1
while n <= 500:
    i = i+1
    a = a+i
    n = len(factors(a))
ans12 = a
print(ans12)