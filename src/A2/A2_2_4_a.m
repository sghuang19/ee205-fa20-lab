nx1 = 0:9;
nh1 = 0:4;
x1 = [ones(1, 5) zeros(1, 5)];
h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];

subplot(3, 1, 1)
stem(nx1, x1)
xlabel('nx1')
ylabel('Output')
title('x1')
subplot(3, 1, 2)
stem(nh1, h1)
xlabel('nh1')
ylabel('Output')
title('h1')
subplot(3, 1, 3)
stem(nh1, h2)
xlabel('nh2')
ylabel('Output')
title('h2')
