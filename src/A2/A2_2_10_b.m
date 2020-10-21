n = 0:1000;
x = [1 zeros(1, 1000)];
a1 = 1;
b1 = [1 zeros(1, 999) 0.5];
y1 = filter(b1, a1, x);

a2 = [1 zeros(1, 999) 0.5];
b2 = 1;
z1 = filter(b2, a2, y1);

stem(n, z1);
xlabel('n');
ylabel('z1');
title('z[n] + 0.5 * z[n-1000] = y[n]');
