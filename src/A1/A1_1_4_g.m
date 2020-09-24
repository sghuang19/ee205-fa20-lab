% define scope
l = 10;

% 1.4 advanced problem g
% time-invariance

n = -l:l;
t = 2;
y1 = L(n)
nt = n - t;
y2 = [zeros(1, t) y1(1, t + 1:2 * l + 1)]
y3 = L(nt)

figure(1)
stem(n, y1, '*')
hold on
stem(n, y2)
hold on
stem(n, y3, '*')

title('y[n] = x[2n]')
xlabel('Time')
ylabel('Output')
legend('y_1[n] = x[2n]', ...
    'y_2[n] = x[2n - t]', ...
    'y_3[n] = y_1[n-t] = x[2(n - t)]')

%causality

l = 4;
n = -l:l;

% define unit impulse input at n = 2
x1 = [zeros(1, l + 2) 1 zeros(1, l - 2)]

nt = 1:2:2 * l + 1
y4 = [zeros(1, l / 2) x1(nt) zeros(1, l / 2)]

figure(2)
stem(n, x1, '*')
hold on
stem(n, y4)

title('y[n] = x[2n]')
xlabel('Time')
ylabel('Output')
legend('x[n] = \delta[n - 1]', ...
    'y[n] = x[2n]')

%def function
function y = L(x)
    y = x.^2;
end
