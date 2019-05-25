# Problem 24
from itertools import permutations
perm = permutations([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
perm = list(perm)
print(''.join(map(str, perm[999999])))