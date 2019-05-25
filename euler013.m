%% Problem 13
txt = importdata('p13.txt');
tmp = strrep(num2str(sum(txt)),'.','');
ans13 = tmp(1:10);
disp(ans13)