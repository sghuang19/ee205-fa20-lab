t = linspace(0, 20, 1000);
% square wave
x2 = cos(t);
x2(x2 > 0) = ones(size(x2(x2 > 0)));
x2(x2 < 0) = -ones(size(x2(x2 < 0)));

apos_k = [];
aneg_k = [];

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
ssum = real(s1 + s2 + s3 + s4 + s5);

% The two outputs
b = 1;
a = [1 1];
ysum = lsim(b, a, ssum, t);
y = lsim(b, a, x2, t);

%plot
subplot(2, 1, 1), plot(t, y)
hold on
plot(t, ysum)
xlabel('t')
ylabel('Output')
title('Comparison for Harmonic Components Sum and Original Response')
legend('Original Output', 'Harmonic Components Sum')

% energy
k = 1000;
E = zeros(1, 1000);
e = 0;

for i = 1:k
    e = e + (sin(i * pi / 2) / i * pi)^2 + (sin(i * (-pi) / 2) / i * (-pi))^2
    E(i) = e;
end

subplot(2, 1, 2)
plot(t, E)
xlabel('t')
ylabel('Energy')
title('The Energy for x2 CTFS')
