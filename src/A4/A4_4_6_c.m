load ctftmod.mat

ydash = lsim(bf, af, dash, t(1:length(dash)));
ydot = lsim(bf, af, dot, t(1:length(dot)));

subplot(2, 1, 1)
plot(dash)
hold on
plot(ydash)
legend('dash', 'ydash')
xlabel('time')
ylabel('amplitude')

subplot(2, 1, 2)
plot(dot)
hold on
plot(ydot)
legend('dot', 'ydot')
xlabel('time')
ylabel('amplitude')
