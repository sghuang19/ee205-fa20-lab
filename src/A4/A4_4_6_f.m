load ctftmod.mat

y1 = x .* cos(2 * pi * f1 .* t(1:length(x)));
m1 = 2 * lsim(bf, af, y1, t(1:length(x)));

subplot(2, 2, 1)
plot(dash)
title('dash')
subplot(2, 2, 2)
plot(dot)
title('dot')
subplot(2, 2, [3, 4])
plot(m1)
title('m_1')
