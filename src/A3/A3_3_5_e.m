N1 = 8;
N2 = 16;
N3 = 32;

a1 = 1 / N1 * fft(x1);
a2 = 1 / N2 * fft(x2);
a3 = 1 / N3 * fft(x3);

subplot(3, 1, 1)
stem(n1, abs(a1))
xlabel ('n')
ylabel('a1')

subplot(3, 1, 2)
stem(n2, abs(a2))
xlabel ('n')
ylabel('a2')

subplot(3, 1, 3)
stem(n3, abs(a3))
xlim([0 31])
xlabel ('n')
ylabel('a3')
