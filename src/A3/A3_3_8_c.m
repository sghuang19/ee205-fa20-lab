k = 0:19;
a_x = [-1/2 zeros(1,7) 3/4 0 3/4 zeros(1,7) -1/2 0];
Omega_k = (pi/10)*k;

stem(Omega_k,a_x)
xlabel('\omega_k')
ylabel('Output')
title('DTFS coefficients of x[n]')
