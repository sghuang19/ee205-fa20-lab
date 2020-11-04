N = 40;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

tic
y = conv([x x], h);
y = y(1, 1:40);
f40c = toc;

stem(1:40, y)
title('$$y[n]=\sum_{r=0}^{N-1}x[r]h[n-r]$$, $$N=40$$', 'Interpreter', 'latex')
