%% Problem 2
fibseq = [1 2]; ans2 = 2;
while fibseq(2) < 4e6
    fibseq = [fibseq(2) sum(fibseq)];
    if ~mod(fibseq(2),2)
        ans2 = ans2 + fibseq(2);
    end
end
print(ans2)