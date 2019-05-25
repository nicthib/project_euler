%% Problem 7
ran = 1.6e5;
a = 1:ran;
for i = 2:1000
    if isprime(i)
        a(i*2:i:end) = 0;
    else
        a(i:i:end) = 0;
    end
end
a(a==0) = [];
a = a(isprime(a));
ans7 = a(10001);
print(ans7)
