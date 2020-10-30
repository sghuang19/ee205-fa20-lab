t = linspace(0, 20, 1000);

% square wave
x2 = cos(t);
x2(x2 > 0) = ones(size(x2(x2 > 0)));
x2(x2 < 0) = -ones(size(x2(x2 < 0)));

% coefficients for x2 CTFS
N = 20;
a = (1/N)*fft(x2);
apos_k = zeros(1,5);
aneg_k = zeros(1,5);


% vectors with positive and negative index
n = 1;
m = 1;
for i = 1:10
    if a(i) > 0
        apos_k(n) = a(i);
        n = n + 1;
    end
    if a(i) < 0
        aneg_k(m) = a(i);
        m = m + 1;
    end
end

s1 = apos_k(1)*exp(j*t)+aneg_k(1)*exp(-j*t);
s2 = apos_k(2)*exp(j*t)+aneg_k(2)*exp(-j*t);
s3 = apos_k(3)*exp(j*t)+aneg_k(3)*exp(-j*t);
s4 = apos_k(4)*exp(j*t)+aneg_k(4)*exp(-j*t);
s5 = apos_k(5)*exp(j*t)+aneg_k(5)*exp(-j*t);
s = real(s1+s2+s3+s4+s5);

% plot
plot(t,x2)
hold on
plot(t,s)
xlabel('t')
ylabel('Output')
title('Simulation For x2')
legend('x2','s')




