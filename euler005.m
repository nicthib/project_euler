%% Problem 5
clear
facts = [];
for i = 20:-1:1
    tmp1 = factor(i); tmp2 = unique(tmp1);
    for j = 1:numel(tmp2)
        n1 = numel(find(tmp2(j)==tmp1));
        n2 = numel(find(facts==tmp2(j)));
        if n1 > n2
            facts = [facts repmat(tmp2(j),[1 n1-n2])];
        end
    end
end
ans5 = prod(facts);
print(ans5)