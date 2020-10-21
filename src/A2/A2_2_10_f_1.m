load lineup.mat

% obtain the autocorrelation of y2
Rxx = xcorr(y2);
figure
plot(Rxx)
title('The Auotocorrelation of y_2')
xlabel('index')
ylabel('value')

% to obtain the maximum peak
[p1y, p1x] = max(Rxx);

% assign 0 to the sampling points around the maximum peak
Rxx2 = Rxx;
Rxx2(p1x - 100:p1x + 100, 1) = 0;

% to obtain the sub-maximum peak
[p2y, p2x] = max(Rxx2);

% mark the peaks in the plot
hold on
plot(p1x, p1y, 'o')
plot(p2x, p2y, 'o')
plot(2 * p1x - p2x, p2y, 'o')

% calculate the time difference
N = abs(p1x - p2x);

% calculate the attenuation factor alpha
% syms x
% result = solve(p2y / p1y == x / (x^2 + 1), x);
% alp = result(2)
alp = sqrt(p2y / p1y);

% cancel the echo using filter
A2 = [1 zeros(1, N - 1) alp];
B2 = 1;
z = filter(B2, A2, y2);

% verifying the result
figure
subplot(2, 1, 1)
plot(y2)
title('y_2[n]')
subplot(2, 1, 2)
plot(z)
title('z[n]')
ylim([-10, 5])

sound(z)
