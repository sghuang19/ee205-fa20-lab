load ctftmod.mat

y = dash .* cos(2 * pi * f1 .* t(1:length(dash)));
yo = lsim(bf, af, y, t(1:length(dash)));

plot(y)
hold on
plot(yo)
legend('y', 'yo')
xlabel('time')
ylabel('amplitude')
