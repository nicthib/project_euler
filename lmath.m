function out = lmath(in1,in2,oper)
carry = 0;
in1_o = in1; in2_o = in2;
out = zeros(1,max([length(in1) length(in2)]));
switch oper
    case 'add'
        fun = @(a,b) a+b;
    case 'sub'
        fun = @(a,b) a-b;
    case 'prod'
        fun = @(a,b) a*b;
end

for j = 1:min([length(in1) length(in2)])
    tmp1 = in1_o(end);
    tmp2 = in2_o(end);
    tmp = fun(tmp1,tmp2);
    out(end-j+1) = tmp;
    if tmp > 9 && j ~= numel(out)
        carry = tmp(1);
        out(end-j+1) = out(end-j+1)-carry*10;
    elseif tmp > 9 && j == numel(out)
        out = [1 out];
        out(end-j+1) = out(end-j+1)-carry*10;
    else
        carry = 0;
    end
    in1_o(end) = [];
    in2_o(end) = [];
end
if ~isempty(in1_o)
    out = [in1_o out];
elseif ~isempty(in2_o)
    out = [in2_o out];
end