N = 40;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

tic
y = conv([x x], h);
y = y(1, 1:N);
f40c = toc;

stem(1:N, y)
title('$$y[n]=\sum_{r=0}^{N-1}x[r]h[n-r]$$, $$N=80$$', 'Interpreter', 'latex')
