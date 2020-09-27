l = 10;

n = -l:l;
x = n;

y = sin((pi / 2) * x)

stem(n, y, '*');
title('y[n] = sin(pi/2 * x[n])');
xlabel('Time');
ylabel('Output');
legend('y[n] = sin(pi/2 * x)');
