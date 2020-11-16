tau = 0.01;
T = 10;
N = T / tau;
t = [0:tau:T - 0.01];
x = exp(-2 .* abs(t));
y = exp(-2 .* abs(t - 5));
Y = fftshift(tau * fft(y));
w = -(pi / tau) + (0:N - 1) * (2 * pi / (N * tau));
