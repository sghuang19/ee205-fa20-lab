n = -1:0.01:1;
x = n.^2;
y = log(x)
plot(n, y, '*')

title('y[n] = log(x[n])')
xlabel('Time');
ylabel('Output')
