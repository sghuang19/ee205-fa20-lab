load ctftmod.mat

y2 = x .* sin(2 * pi * f2 .* t(1:length(x)));
m2 = 2 * lsim(bf, af, y2, t(1:length(x)));
subplot(2, 1, 1)
plot(m2)
title('m_2')

y3 = x .* sin(2 * pi * f1 .* t(1:length(x)));
m3 = 2 * lsim(bf, af, y3, t(1:length(x)));
subplot(2, 1, 2)
plot(m3)
title('m_3')
