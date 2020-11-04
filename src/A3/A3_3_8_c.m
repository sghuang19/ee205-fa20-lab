k = 0:19;
a_x = [0 -1/2 zeros(1, 7) 3/4 0 3/4 zeros(1, 7) -1/2];
Omega_k = (1/10) * k;

stem(Omega_k, abs(a_x))
xlabel('\omega_k( \times \pi)')
ylabel('Output')
title('DTFS coefficients of x[n]')
