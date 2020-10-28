% System1
a1 = [1 -0.8];
b1 = 1;

% System2
a2 = [1 0.8];
b2 = 1;

N = 1024;
[H1, omega1] = freqz(b1, a1, N, 'whole');
[H2, omega2] = freqz(b2, a2, N, 'whole');

subplot(2, 1, 1)
plot(omega1, abs(H1))
xlabel ('\omega1')
ylabel('H(e^{j\omega})')
title('System1')
subplot(2, 1, 2)
plot(omega2, abs(H2))
xlabel ('\omega2')
ylabel('H(e^{j\omega})')
title('System2')
