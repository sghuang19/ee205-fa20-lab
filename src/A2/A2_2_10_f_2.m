load lineup.mat

% obtain the autocorrelation of y3
Rxx = xcorr(y3);
figure
plot(Rxx)
title('The Auotocorrelation of y_3')
xlabel('index')
ylabel('value')

% to obtain the maximum peak
[p1y, p1x] = max(Rxx);

% assign 0 to the sampling points around the maximum peak
Rxx2 = Rxx;
Rxx2(p1x - 100:p1x + 100, 1) = 0;

% to obtain the sub-maximum peak
[p2y, p2x] = max(Rxx2);

% assign 0 to the sampling points around the sub-maximum peak
Rxx3 = Rxx2;
Rxx3(p2x - 100:p2x + 100, 1) = 0;
Rxx3(2 * p1x - p2x - 100: ...
    2 * p1x - p2x + 100, 1) = 0;

% to obtain the third-maximum peak
[p3y, p3x] = max(Rxx3);

% mark the peaks in the plot
hold on
plot(p1x, p1y, 'o')
plot(p2x, p2y, 'o')
plot(p3x, p3y, 'o')
plot(2 * p1x - p2x, p2y, 'o')
plot(2 * p1x - p3x, p3y, 'o')

% calculate the time difference
N1 = abs(p1x - p2x);
N2 = abs(p1x - p3x);

% calculate the attenuation factor alpha
alpha1 = sqrt(p2y / p1y);
alpha2 = sqrt(p3y / p1y);

% cancel the echo using filter
A2 = [1 zeros(1, N1 - 1) alpha1 ...
        zeros(1, N2 - N1 -1) alpha2];
B2 = 1;
z = filter(B2, A2, y3);

% verifying the result
figure
subplot(2, 1, 1)
plot(y3)
title('y_3[n]')
subplot(2, 1, 2)
plot(z)
ylim([-10, 5])
title('z[n]')

sound(z)
