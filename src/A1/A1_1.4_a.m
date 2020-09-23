% define scopes
l = 5;

% Basic Problem a
n = [-l:l];
x1 = [zeros(1, l) 1 zeros(1, l)];
x2 = 2 * x1;
x3 = x1 + x2;

y1 = L(x1);
y2 = L(x2);
y3 = y1 + y2
y4 = L(x3)

stem(n, y3, 'o')
hold on
stem(n, y4, '*')
title('y[n] = sin((pi/2)x[n])')
xlabel('Time');
ylabel('Output')
legend('y_1[n] = sin((pi/2)x_1[n]) + sin((pi/2)x_2[n])', ...
    'y_2[n] = sin((pi/2)(x_1[n]+x_2[n]))');

% define system
function y = L(x)
    y = sin(pi / 2 * x)
end
