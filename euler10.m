%% Problem 10
ran = 2e6;
a = 1:ran;
for i = 2:1000
    if isprime(i)
        a(i*2:i:end) = 0;
    else
        a(i:i:end) = 0;
    end
end
a = a(isprime(a));
ans10 = num2str(sum(a));
disp(ans10)