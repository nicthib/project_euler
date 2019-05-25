%% Problem 102
clear
ans102 = 0;
txt = importdata('p102_triangles.txt');
l = [1 2;2 3;3 1];
for i = 1:1000
    p = reshape(txt(i,:),[2 3])'; q = [0 0;0 0];
    p_s = (sign(p)+3)/2;
    for j = 1:3
        if p_s(j,:) == [1 1]; q(2,1) = 1;
        elseif p_s(j,:) == [1 2]; q(1,1) = 1;
        elseif p_s(j,:) == [2 1]; q(2,2) = 1;
        elseif p_s(j,:) == [2 2]; q(1,2) = 1;
        end
        p1 = p(l(j,1),:); p2 = p(l(j,2),:);
        if sign(p1) == -sign(p2)
            m = (p2(2)-p1(2))/(p2(1)-p1(1));
            a = p2(2)-m*p2(1);
            if abs(sum(sign(p1))) == 2
                if a > 0; q(1,1) = 1;
                else; q(2,2) = 1; end
            else
                if a > 0; q(1,2) = 1;
                else; q(2,1) = 1; end
            end
        end
    end
    if sum(q(:)) == 4
        ans102 = ans102+1;
    end
end
disp(ans102)