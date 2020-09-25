clf
% define scope
l = 10;

% time-invariance
% the original function:x[n] = cos(n) and y = n*x[n]
n1 = -l:l;
x1 = cos(n1);
y1 = n1 .* x1

% let the input signal have a time shift: x2[n] = x1[n-1]
n2 = n1 - 1;
x2 = cos(n2);
y2 = n1 .* x2

% let the original output signal have a time shift: y3[n] = y1[n-1]
y3 = n2 .* x2

figure(1)
stem(n1, y1, '*')
hold on
stem(n1, y2, '*')
hold on
stem(n1, y3, 'o')

title('y = nx[n]')
xlabel('Time')
ylabel('Output')
legend('y_1[n] = nx[n]', ...
    'y_2[n] = nx[n - 1]', ...
    'y_3[n] = y_1[n - 1] = (n - 1)x[n - 1]')

% stability
n4 = double((intmax - 10):intmax)
x4 = n4.^33
y4 = n4 .* x4

% invertibility
n5 = -l:l;
x5 = 1 ./ n5
y5 = n5 .* x5

figure(2)
stem(n5, x5, '')
hold on
stem(n5, y5, '')

title('y = nx[n]')
xlabel('Time')
ylabel('Output')

legend('x[n] =  1/n', ...
    'y[n] = nx[n] = 1')
