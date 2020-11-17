b1 = [2 -1];
a1 = [1 3/2 1/2];
H1 = freqs(b1, a1);
subplot(2, 1, 1)
semilogy(abs(H1))
title('Magnitude of H1(j\omega)')
xlabel('Frequaency ( rad/s )')
ylabel('Magnitude')
subplot(2, 1, 2)
plot(unwrap(angle(H1)))
title('Phase of H1(j\omega)')
xlabel('Frequaency ( rad/s )')
ylabel('Phase')
