syms omega
syms n
% n = 0:0.1:10;
ui = 5 * sin(omega * n);
omega = pi;
fplot(@(n, omega) 5 * sin(omega * n));
