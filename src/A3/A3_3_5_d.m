n1 = 0:7;
x1 = ones(1, 8);
n2 = 0:15;
x2 = [ones(1, 8) zeros(1, 8)];
n3 = 0:31;
x3 = [ones(1, 8) zeros(1, 24)];

n = 0:63;
x1_n = [x1 x1 x1 x1 x1 x1 x1 x1];
x2_n = [x2 x2 x2 x2];
x3_n = [x3 x3];

subplot(3, 1, 1)
stem(n, x1_n)
xlabel('n')
ylabel('x1')

subplot(3, 1, 2)
stem(n, x2_n)
xlabel('n')
ylabel('x2')

subplot(3, 1, 3)
stem(n, x3_n)
xlabel('n')
ylabel('x3')
