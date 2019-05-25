# Problem 30
from numpy import asarray as arr
sum([x for x in range(2,5*(9**5)+1) if sum(arr(list(map(int,str(x))))**5)==x])
