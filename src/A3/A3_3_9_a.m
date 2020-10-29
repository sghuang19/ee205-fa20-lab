t = linspace(0,20,1000);
x = cos(t);
b = [1 0];
a = [1 1];

y = lsim(b, a, x, t);

plot(t,y)
xlim([10 20])
hold on
plot(t,x)
xlim([10 20])
xlabel('t')
ylabel('Output')
title('Response of H to x')
legend('y','x');

