% define scope
l = 10;

%1.4 advanced problem g
%linearity
n = [-l:l];

% define x[n] = n^2
x1 = 4 * n.^2; % x[2n] = (2n)^2 = 4n^2
x2 = 16 * n.^2; % x[2(2n)] = (4n)^2 = 16n^2
x3 = 8 * n.^2 % 2x[2n] = 8n^2

stem(n, x1);
hold on
stem(n, x2);
hold on
stem(n, x3)

title('y[n] = x[2n]');
xlabel('Time');
ylabel('Output');
legend('y_1[n] = x[2n]', ...
    'y_2[n] = x[2(2n)]', ...
    'y_3[n] = 2x[2n]')
