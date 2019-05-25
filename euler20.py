# Problem 20
import math.factorial
x = str(math.factorial(100))
def sum_digits(digit):
    return sum(int(x) for x in digit if x.isdigit())
print(sum_digits(x))