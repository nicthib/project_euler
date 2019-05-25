%% Problem 67
clear
a = importdata('p067_triangle.txt');
for i = 0:99
    t{i+1} = a(1:i+1);
    a(1:i+1) = [];
end
for i = 100:-1:2
    t_lb = t{i};   % Bottom layer
    t_ln = t{i-1}; % Next layer up
    for j = 1:numel(t{i})-1
        t{i-1}(j) = t{i-1}(j)+max(t{i}(j:j+1));
    end
end
ans67 = t{1};
disp(ans67)