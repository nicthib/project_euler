# Problem 25
f1 = 1
f2 = 1
n = 0
ans25 = 2
while n < 1000:
    f2old = f2
    f2 = f2+f1
    f1 = f2old
    n = len(str(f2))
    ans25 = ans25+1
print(ans25)