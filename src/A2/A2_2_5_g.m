n = 0:19;
x = [1 zeros(1, 19)];
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

%The four outputs
z1 = conv(h1, x1);
nz1 = 0:38;
s1 = conv(x1, h1);
ns1 = 0:38;
z2 = conv(h2, x1);
nz2 = 0:38;
s2 = conv(x1, h2);
ns2 = 0:38;

stem(ns1, s1, 'o')
hold on;
stem(nz1, z1, '*'),
xlabel('n');
ylabel('Output');
title('s1 and z1');
legend('s1', 'z1');

stem(ns2, s2, 'o')
hold on;
stem(nz2, z2, '*')
xlabel('n');
ylabel('Output');
title('s2 and z2');
legend('s2', 'z2');
