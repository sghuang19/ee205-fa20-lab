% define scope
l = 10;

% 1.4 advanced problem g
% time-invariance
% def

n = [-l:l]
t = 5
nt = n - t
x1 = n
x2 = nt
y1 = 2 * x1
y2 = 2 * x2

stem(n, y1);
hold on
stem(n, y2);
hold on
stem(nt, y1);

title('y[n] = x[2n]');
xlabel('Time');
ylabel('Output');
legend('y_1[n] = x[2n]', ...
    'y_2[n] = x[2(2n)]', ...
    'y_3[n] = 2x[2n]')
