% subplot(3, 1, 1)
% plot(y)
% subplot(3, 1, 2)
% plot(y2)
% subplot(3, 1, 3)
% plot(y3)

Rxx = xcorr(y2);
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

% calculate the

alp = sqrt(p2y / p1y)
A2 = [1 alp^2];
B2 = [1];
z = filter(B2, A2, y2);
sound(z)
plot(z)
