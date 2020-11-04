t = linspace(0, 20, 1000);

% square wave
x2 = sign(cos(t));

% coefficients for x2 CTFS
for i = 1:5
    apos_k(i) =  sin(pi*i/2)/(pi*i);
    aneg_k(i) =  sin(-pi*i/2)/(-pi*i);
end

s1 = apos_k(1) * exp(j * t) + aneg_k(1) * exp(-j * t);
s2 = apos_k(2) * exp(j * t) + aneg_k(2) * exp(-j * t);
s3 = apos_k(3) * exp(j * t) + aneg_k(3) * exp(-j * t);
s4 = apos_k(4) * exp(j * t) + aneg_k(4) * exp(-j * t);
s5 = apos_k(5) * exp(j * t) + aneg_k(5) * exp(-j * t);

ssum = real(s1 + s2 + s3 + s4 + s5);

% coefficients for y CTFS
for k=1:10
    val = ak(k);
    if ak(k)<0
       bpos_k = horzcat(apos_k,val);       
    else
       bneg_k =horzcat(aneg_k,val);
    end 
end

ys1 = real(bpos_k(1)*exp(j*t)+bneg_k(1)*exp(-j*t));
ys2 = real(bpos_k(2)*exp(j*t)+bneg_k(2)*exp(-j*t));
ys3 = real(bpos_k(3)*exp(j*t)+bneg_k(3)*exp(-j*t));
ys4 = real(bpos_k(4)*exp(j*t)+bneg_k(4)*exp(-j*t));
ys5 = real(bpos_k(5)*exp(j*t)+bneg_k(5)*exp(-j*t));

% Output
b = 1;
a = [1 1];

y1 = lsim(b, a, s1, t);
y2 = lsim(b, a, s2, t);
y3 = lsim(b, a, s3, t);
y4 = lsim(b, a, s4, t);
y5 = lsim(b, a, s5, t);
y = lsim(b, a, x2, t);

% plot
subplot(5, 1, 1)
plot(t, y1)
hold on
plot(t, ys1)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y1', 'ys1')

subplot(5, 1, 2)
plot(t, y2)
hold on
plot(t, ys2)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y2', 'ys2')

subplot(5, 1, 3)
plot(t, y3)
hold on
plot(t, ys3)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y3', 'ys3')

subplot(5, 1, 4)
plot(t, y4)
hold on
plot(t, ys4)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y4', 'ys4')

subplot(5, 1, 5)
plot(t, y5)
hold on
plot(t, ys5)
xlim([10 20])
xlabel('t')
ylabel('Output')
legend('y5', 'ys5')
