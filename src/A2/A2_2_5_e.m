n = 0:19;
x1 = ones(1, 20);
%System1
a1 = [1 -0.6];
b1 = [1 0];
h1 = filter(b1, a1, x);
%System2
h2 = zeros(1, 20);
h2(1) = 1; %cuz h2(i) = 0 if i <1, h2[0] = x[0] = 1, h2[1] = h2[0] + 0;

for i = 1:19
    h2(i + 1) = 0.6^i * h2(i) +x(i + 1);
end

s1 = conv(x1, h1);
ns1 = 0:38;
s2 = conv(x1, h2);
ns2 = 0:38;

subplot(2, 1, 1)
stem(ns1, s1), axis([0, 38, ylim])
xlabel('n');
ylabel('s1');
title('s1[n] = x[n]*h1[n]');
subplot(2, 1, 2)
stem(ns2, s2), axis([0, 38, ylim])
xlabel('n');
ylabel('s2');
title('s2[n] = x[n]*h2[n]');
