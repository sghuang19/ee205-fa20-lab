tau = 0.01;
T = 10;
N = T / tau;
t = (0:tau:T - 0.01);
x = exp(-2 .* abs(t));
y = exp(-2 .* abs(t - 5));
Y = fftshift(tau * fft(y));
w = -(pi / tau) + (0:N - 1) * (2 * pi / (N * tau));

phase = exp(1j * 5 * w);
X = Y .* phase;

Xanalysis = 1 ./ (2 + 1j * w) + 1 ./ (2 - 1j * w);

subplot(2, 1, 1)
semilogy(w, abs(Xanalysis))
hold on
semilogy(w, abs(X))
title('Magnitude of X and Xanalysis')
xlabel('\omega')
ylabel('Magnitude')
legend('Xanalysis', 'X')
subplot(2, 1, 2)
plot(w, angle(Xanalysis))
hold on
plot(w, angle(X))
title('Phase of X and Xanalysis')
xlabel('\omega')
ylabel('Phase')
legend('Xanalysis', 'X')
