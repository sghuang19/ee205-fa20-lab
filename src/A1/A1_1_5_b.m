% 1.5 Advanced Problem b
a = 1;
yn1 = 0;
n = 0:1:30;
x1 = [1 zeros(1, 30)];
x2 = ones(1, 31);

y1 = A1_1_5_a(a, x1, yn1)
y2 = A1_1_5_a(a, x2, yn1)

stem(n, y1, '*')
hold on
stem(n, y2)

title('y[n] = ay[n-1] + x[n]')
xlabel('Time')
ylabel('Output')
legend('y_1[n] = y_1[n - 1] + \delta[n]', ...
    'y_2[n] = y_2[n - 1] + u[n]')
