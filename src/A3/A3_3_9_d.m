t = linspace(0, 20, 1000);

% coefficients for x2 CTFS
apos_k = 2 * [sin(pi / 2) / pi, sin(pi) / (2 * pi), sin(pi * 3/2) / (3 * pi), sin(2 * pi) / (4 * pi), sin(pi * 5/2) / (5 * pi)];
aneg_k = 2 * [sin(-pi / 2) / (-pi), sin(-pi) / (-2 * pi), sin(-pi * 3/2) / (-3 * pi), sin(-2 * pi) / (-4 * pi), sin(-pi * 5/2) / (-5 * pi)];

s1 = apos_k(1) * exp(j * t) + aneg_k(1) * exp(-j * t);
s2 = apos_k(2) * exp(j * 2 * t) + aneg_k(2) * exp(-j * 2 * t);
s3 = apos_k(3) * exp(j * 3 * t) + aneg_k(3) * exp(-j * 3 * t);
s4 = apos_k(4) * exp(j * 4 * t) + aneg_k(4) * exp(-j * 4 * t);
s5 = apos_k(5) * exp(j * 5 * t) + aneg_k(5) * exp(-j * 5 * t);
ssum = real(s1 + s2 + s3 + s4 + s5);

% Output 
b = 1;
a = [1 1];

y1 = lsim(b, a, s1, t);
y2 = lsim(b, a, s2, t);
y3 = lsim(b, a, s3, t);
y4 = lsim(b, a, s4, t);
y5 = lsim(b, a, s5, t);
ysum = lsim(b, a, ssum, t);

% plot
plot(t, ysum)
xlabel('t')
ylabel('Output')
title('Response for ssum')
