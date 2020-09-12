%Basic Problem b
n = [-6 : 9];
x = [zeros(1, 6) 1/2 ones(1, 9) ]
x0 = [zeros(1, 6) 1/2 ones(1, 9)];
x1 = [zeros(1, 5) 1/2 ones(1, 10)];
y = x0 + x1;
stem(n, x, '*');
hold on
stem(n, y);

title('y[n] = x[n] + x[n + 1]')
xlabel('Time')
legend('x[n] = u[n]', 'y[n] = x[n] + x[n + 1]')
