tau = 0.01;
T = 10;
N = T / tau;
t = [0:tau:T - 0.01];
x = exp(-2 .* abs(t));
y = exp(-2 .* abs(t - 5));
Y = fftshift(tau * fft(y));
w = -(pi / tau) + (0:N - 1) * (2 * pi / (N * tau));

subplot(2, 1, 1)
semilogy(w,abs(Y))
xlabel('\omega')
ylabel('Magnitude')
title('Magnitude of Y(j\omega)')
subplot(2, 1, 2)
plot(w,unwrap(angle(Y)))
xlabel('\omega')
ylabel('Phase')
title('Phase of Y(j\omega)')