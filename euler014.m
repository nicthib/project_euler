%% Problem 14
for i = 1:1e6
    n = i; iter = 0;
    while n ~= 1
        if mod(n,2) == 0
            n = n/2;
        else
            n = n*3+1;
        end
        iter = iter+1;
    end
    l(i) = iter;
end
ans14 = find(max(l) == l);
disp(ans14)