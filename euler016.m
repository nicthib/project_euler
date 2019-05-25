%% Problem 16
clear
s = num2str(2);
a = 1;
for i = 1:1000
    carry = 0;
    bold = a;
    for j = 1:numel(a)
        tmp = bold(end-j+1);
        tmp = tmp*2+carry;
        a(end-j+1) = tmp;
        if tmp > 9 && j ~= numel(a)
            carry = 1;
            a(end-j+1) = a(end-j+1)-10;
        elseif tmp > 9 && j == numel(a)
            a = [1 a];
            a(end-j+1) = a(end-j+1)-10;
        else
            carry = 0;
        end
    end
end
ans16 = sum(a);
disp(ans16)