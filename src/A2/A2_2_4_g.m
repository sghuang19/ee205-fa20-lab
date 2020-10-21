n = 0:4;
x = [1 zeros(1, 4)];
hg2 = [0 2 5 4 -1];
xg = 2 .* x;

yga = xg.^2;
ygb = conv(xg, hg2);
nygb = 0:8;
yg1 = [yga zeros(1, 4)] + ygb;
nyg1 = 0:8;

hg1 = x.^2;
hparallel = hg1 + hg2;
yg2 = conv(xg, hparallel);
nyg2 = 0:8;

subplot(2, 1, 1)
stem(nyg1, yg1)
xlabel('n')
ylabel('yg1')
title('yg1 = xg * hga + xg * hgb');
subplot(2, 1, 2)
stem(nyg2, yg2)
xlabel('n')
ylabel('yg2')
title('yg2 = xg * (hg1 + hg2)');
