%% Problem 3
clear
f_a = factor(600851475143);
ans3 = max(f_a(isprime(f_a)));
print(ans3)