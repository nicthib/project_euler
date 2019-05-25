%% Problem 4
e_d = [1 9;3 3;9 1]; pal_l = [];
for i = 0:9
    for j = 0:9
        for k = 1:3
            n1 = str2num(sprintf('%d%d%d',9,i,e_d(k,1)));
            n2 = str2num(sprintf('%d%d%d',9,j,e_d(k,2)));
            n3 = n1*n2;
            if n3 == str2num(fliplr(num2str(n3)))
                pal_l = [pal_l n3];
            end
        end
    end
end
ans4 = max(pal_l);