%% Problem 9
[a,b] = meshgrid(1:1000,1:1000);
[x,y] = find(sqrt(a.^2+b.^2) == floor(sqrt(a.^2+b.^2)));
for i = 1:numel(x)
    c = sqrt(x(i).^2+y(i).^2);
    if x(i) < y(i) && y(i) < c & x(i)+y(i)+c == 1000
        ans9 = x(i)*y(i)*c;
        break
    end
end
disp(ans9)