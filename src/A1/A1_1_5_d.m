% 1.5 Advanced problem d

a = 1/2;
yn1_1 = 0;
yn1_2 = 1/2;

x = ones(1, 31);

y1 = A1_1_5_a(a, x, yn1_1)
y2 = A1_1_5_a(a, x, yn1_2)

stem(n, y1)
hold on
stem(n, y2, '*')


title('y[n] = ay[n-1] + x[n]')
xlabel('Time')
ylabel('Output')
legend('y_1[n], y[-1]=0', ...
    'y_2[n], y[-1]=1/2')
