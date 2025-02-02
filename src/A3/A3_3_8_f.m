k = 0:19;
% range for input
n = -20:99;
a_x = [0 -1/2 zeros(1, 7) 3/4 0 3/4 zeros(1, 7) -1/2];
x_20 = 20 * ifft(a_x);
x = [x_20 x_20 x_20 x_20 x_20 x_20];

% System1
a1 = [1 -0.8];
b1 = 1;
y1 = filter(b1, a1, x);
y1_20 = y1(1:20);
% System2
a2 = [1 0.8];
b2 = 1;
y2 = filter(b2, a2, x);
y2_20 = y2(1:20);

a_y1 = (1/20) * fft(y1_20);
a_y2 = (1/20) * fft(y2_20);

subplot(2, 1, 1)
stem(k, abs(real(a_y1)))
xlabel('n')
ylabel('a_y1', 'Interpreter', 'none')
title('Magnitude of coefficients of y1')

subplot(2, 1, 2)
stem(k, abs(real(a_y2)))
xlabel('n')
ylabel('a_y2', 'Interpreter', 'none')
title('Magnitude of coefficients of y2')
