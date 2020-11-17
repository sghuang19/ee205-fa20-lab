b3 = [0 0 -4];
a3 = [1 0 -4];

H3 = freqs(b3, a3);
subplot(2, 1, 1)
semilogy(abs(H3))
title('Magnitude of H3(j\omega)')
xlabel('Frequency ( rad/s )')
ylabel('Magnitude')
subplot(2, 1, 2)
plot(unwrap(angle(H3)))
title('Phase of H3(j\omega)')
xlabel('Frequency ( rad/s )')
ylabel('Phase')
