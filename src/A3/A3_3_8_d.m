k = 0:19;
n = -20:99;
a_x = [-1/2 zeros(1, 7) 3/4 0 3/4 zeros(1, 7) -1/2 0];
x_20 = 20 * ifft(a_x);
x = [x_20 x_20 x_20 x_20 x_20 x_20];

stem(n, x)
xlabel('n')
ylabel('x')
title('x[n]')
