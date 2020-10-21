n = 0:1000;
x = [1 zeros(1, 1000)];
a1 = 1;
b1 = [1 zeros(1, 999) 0.5];

he = filter(b1, a1, x);

stem(n, he)
xlabel('n')
ylabel('Output')
title('impulse response : he')
