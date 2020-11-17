b2 = [3 10 5];
a2 = [1 7 16 12];

H2 = freqs(b2, a2);
subplot(2, 1, 1)
semilogy(abs(H2))
title('Magnitude of H2(j\omega)')
xlabel('Frequency ( rad/s )')
ylabel('Magnitude')
subplot(2, 1, 2)
plot(unwrap(angle(H2)))
title('Phase of H2(j\omega)')
xlabel('Frequency ( rad/s )')
ylabel('Phase')
