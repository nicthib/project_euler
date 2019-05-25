# Problem 23
from functools import reduce
def factors(n):
    return set(reduce(list.__add__,
                ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))
def d(n):
    f = list(factors(n))
    if len(f) > 2:
        f.sort()
        return sum(f[0:-1])
    else:
        return 1

def find_an(m):
    a = []
    for i in range(12,m):
        if d(i) > i:
            a.append(i)
    return a

a = find_an(28124)
# create sum table
sum_table = [i+j for i in a for j in a]
sum_sort = sorted(set(sum_table))
ans23 = sum([x for x in range(24,28123) if x not in sum_sort])
print(ans23)