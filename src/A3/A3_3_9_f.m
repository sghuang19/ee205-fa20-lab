t = linspace(0, 20, 1000);

% square wave
x2 = sign(cos(t));
y2 = lsim(1, [1 1], x2, t);

ak = 1 / (2 * pi) * fft(x2);
bk = 1 / (2 * pi) * fft(y2);

% coefficients for x2 CTFS
for k = 1:10
    val = ak(k);

    if ak(k) < 0
        apos_k = horzcat(apos_k, val);
    else
        aneg_k = horzcat(aneg_k, val);
    end

end

s1 = apos_k(1) * exp(j * t) + aneg_k(1) * exp(-j * t);
s2 = apos_k(2) * exp(j * 2 * t) + aneg_k(2) * exp(-j * 2 * t);
s3 = apos_k(3) * exp(j * 3 * t) + aneg_k(3) * exp(-j * 3 * t);
s4 = apos_k(4) * exp(j * 4 * t) + aneg_k(4) * exp(-j * 4 * t);
s5 = apos_k(5) * exp(j * 5 * t) + aneg_k(5) * exp(-j * 5 * t);

ssum = real(s1 + s2 + s3 + s4 + s5);

% coefficients for y CTFS
for k = 1:10
    val = bk(k);

    if bk(k) < 0
        bpos_k = horzcat(bpos_k, val);
    else
        bneg_k = horzcat(bneg_k, val);
    end

end

ys1 = real(bpos_k(1) * exp(j * t) + bneg_k(1) * exp(-j * t));
ys2 = real(bpos_k(2) * exp(j * 2 * t) + bneg_k(2) * exp(-j * 2 * t));
ys3 = real(bpos_k(3) * exp(j * 3 * t) + bneg_k(3) * exp(-j * 3 * t));
ys4 = real(bpos_k(4) * exp(j * 4 * t) + bneg_k(4) * exp(-j * 4 * t));
ys5 = real(bpos_k(5) * exp(j * 5 * t) + bneg_k(5) * exp(-j * 5 * t));

% Output
b = 1;
a = [1 1];

ya1 = lsim(b, a, s1, t);
ya2 = lsim(b, a, s2, t);
ya3 = lsim(b, a, s3, t);
ya4 = lsim(b, a, s4, t);
ya5 = lsim(b, a, s5, t);
y = lsim(b, a, x2, t);

% plot
subplot(5, 1, 1)
plot(t, ya1)
hold on
plot(t, ys1)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('ya1', 'ys1')

subplot(5, 1, 2)
plot(t, ya2)
hold on
plot(t, ys2)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('ya2', 'ys2')

subplot(5, 1, 3)
plot(t, ya3)
hold on
plot(t, ys3)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('ya3', 'ys3')

subplot(5, 1, 4)
plot(t, ya4)
hold on
plot(t, ys4)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('ya4', 'ys4')

subplot(5, 1, 5)
plot(t, ya5)
hold on
plot(t, ys5)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('ya5', 'ys5')
