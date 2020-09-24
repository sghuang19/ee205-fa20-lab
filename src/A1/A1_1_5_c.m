% 1.5 Advanced Problem c
a = 1;
yn1 = -1;
x1 = ones(1, 31);
x2 = 2 * x1;

y1 = A1_1_5_a(a, x1, yn1)
y2 = A1_1_5_a(a, x2, yn1)
y3 = y1 .* 2 - y2

stem(n, y1, '')
hold on
stem(n, y2, '')
hold on
stem(n, y3, '')

title('y[n] = ay[n-1] + x[n]')
xlabel('Time')
ylabel('Output')
legend('y_1[n] = y_1[n-1] + u[n]', ...
    'y_2[n] = y_2[n-1] + 2u[n]', ...
    'y_3[n] = 2y_1[n] - y_2[n]')
