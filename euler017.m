%% Problem 17
clear
s_0_9 = numel(strrep('one two three four five six seven eight nine',' ',''));
s_10_19 = numel(strrep('ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen',' ',''));
s_10_90 = numel(strrep('twenty thirty forty fifty sixty seventy eighty ninety',' ',''));
s_100 = numel('hundred');
s_1000 = numel('onethousand');
a = s_0_9 + s_10_19 + (s_10_90 * 10) + (s_0_9 * 8);
ans17 = a + (s_0_9 * 100) + (s_100 * 900) + (3 * (900 - 9)) + (a * 9) + s_1000;
disp(ans17)
