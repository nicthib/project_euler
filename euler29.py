# Problem 30
import numpy as np
def digpow5(n):
    sn = [int(d) for d in str(n)]
    return sum(np.asarray(sn)**5)
sum([x for x in range(2,5*(9**5)+1) if sum(map(int,str(12345))**5)==x])
