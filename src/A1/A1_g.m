% define scope
l = 5;

%1.4 advanced problem g
n = [-l:l];
x1 = n;
x2 = 2 * n;
y1 = x1.^3;
y2 = x2.^3;
y3 = 2 * y1;
stem(n, y1);
hold on
stem(n, y2);
hold on
stem(n, y3);

title('y[n] = x^3[n]');
xlabel('Time');
ylabel('Output');
legend('y_1[n] = x^3[n]', ...
    'y_2[n] = (2x[n])^3', ...
    'y_3[n] = 2x^3[n]')
