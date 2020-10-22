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

z1 = conv(h1, x1);
nz1 = 0:38;
z2 = conv(h2, x1);
nz2 = 0:38;

subplot(2, 1, 1)
stem(nz1, z1), axis([0, 19, ylim])
xlabel('n');
ylabel('z1');
title('z1[n] = h1[n]*x[n]');
subplot(2, 1, 2)
stem(nz2, z2), axis([0, 19, ylim])
xlabel('n');
ylabel('z2');
title('z2[n] = h2[n]*x[n]');
