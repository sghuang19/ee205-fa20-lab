t = linspace(0, 20, 1000);

% square wave
x2 = cos(t);
x2(x2 > 0) = ones(size(x2(x2 > 0)));
x2(x2 < 0) = -ones(size(x2(x2 < 0)));


% coefficients for x2 CTFS
apos_k = 2 * [sin(pi / 2) / pi, sin(pi) / (2 * pi), sin(pi * 3/2) / (3 * pi), sin(2 * pi) / (4 * pi), sin(pi * 5/2) / (5 * pi)];
aneg_k = 2 * [sin(-pi / 2) / (-pi), sin(-pi) / (-2 * pi), sin(-pi * 3/2) / (-3 * pi), sin(-2 * pi) / (-4 * pi), sin(-pi * 5/2) / (-5 * pi)];

s1 = apos_k(1) * exp(j * t) + aneg_k(1) * exp(-j * t);
s2 = apos_k(2) * exp(j * 2 * t) + aneg_k(2) * exp(-j * 2 * t);
s3 = apos_k(3) * exp(j * 3 * t) + aneg_k(3) * exp(-j * 3 * t);
s4 = apos_k(4) * exp(j * 4 * t) + aneg_k(4) * exp(-j * 4 * t);
s5 = apos_k(5) * exp(j * 5 * t) + aneg_k(5) * exp(-j * 5 * t);

ssum = real(s1 + s2 + s3 + s4 + s5);

% coefficients for y CTFS

% Output 
b = 1;
a = [1 1];

y1 = lsim(b, a, s1, t);
y2 = lsim(b, a, s2, t);
y3 = lsim(b, a, s3, t);
y4 = lsim(b, a, s4, t);
y5 = lsim(b, a, s5, t);
y = lsim(b, a,x2,t);


% plot
subplot(5, 1, 1)
plot(t, y1)
hold on
plot(t,y)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y1','y')

subplot(5, 1, 2)
plot(t, y2)
hold on
plot(t,y)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y2','y')

subplot(5, 1, 3)
plot(t, y3)
hold on
plot(t,y)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y3','y')

subplot(5, 1, 4)
plot(t, y4)
hold on
plot(t,y)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y4','y')

subplot(5, 1, 5)
plot(t, y5)
hold on
plot(t,y)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y5','y')


