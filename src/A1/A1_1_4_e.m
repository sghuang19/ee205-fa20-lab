% define scope
l = 5;

% 1.4 Advanced Problem e
n = -l:l;
x = n;

y1 = L(x);
y2 = L(x + x)
y3 = y1 + y1

stem(n, y1);
hold on
stem(n, y2);
hold on
stem(n, y3);

title('y[n] = x^3[n]');
xlabel('Time');
ylabel('Output');
legend('y_1[n] = x^3[n]', ...
    'y_2[n] = (x[n] + x[n])^3', ...
    'y_3[n] = y_1[n] + y_1[n]')

% define system
function y = L(x)
    y = x.^3;
end
