t = linspace(0, 20, 1000);

% square wave
x2 = cos(t);
x2(x2 > 0) = ones(size(x2(x2 > 0)));
x2(x2 < 0) = -ones(size(x2(x2 < 0)));

% coefficients for x2 CTFS
for i = 1:5
    apos_k(i) = 2 * sin(pi * i / 2) / (pi * i);
    aneg_k(i) = 2 * sin(-pi * i / 2) / (-pi * i);
end

s1 = apos_k(1) * exp(j * t) + aneg_k(1) * exp(-j * t);
s2 = apos_k(2) * exp(j * 2 * t) + aneg_k(2) * exp(-j * 2 * t);
s3 = apos_k(3) * exp(j * 3 * t) + aneg_k(3) * exp(-j * 3 * t);
s4 = apos_k(4) * exp(j * 4 * t) + aneg_k(4) * exp(-j * 4 * t);
s5 = apos_k(5) * exp(j * 5 * t) + aneg_k(5) * exp(-j * 5 * t);
s = real(s1 + s2 + s3 + s4 + s5);

% plot
plot(t, x2)
hold on
plot(t, s)
xlabel('t')
ylabel('Output')
title('Simulation For x2')
legend('x2', 's')
