t = linspace(0, 20, 1000);

% square wave
x2 = cos(t);
x2(x2 > 0) = ones(size(x2(x2 > 0)));
x2(x2 < 0) = -ones(size(x2(x2 < 0)));

b = [0 1];
a = [1 1];
y2 = lsim(b, a, x2, t);

plot(t, y2)
xlim([10 20])
xlabel('t')
ylabel('Output')
title('Response of H to x2')
