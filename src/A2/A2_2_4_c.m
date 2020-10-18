nx1 = 0:9;
nh1 = 0:4;
x1 = [ones(1,5) zeros(1,5)];
h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];
h3 = h1 + h2;

nw = 0:13;
w1 = conv(x1,h1)+conv(x1,h2);
w2 = conv(x1,h3);

subplot(2,1,1),stem(nw,w1),axis([0,13,ylim])
xlabel('nw');ylabel('x1[n]*h1[n]+x1[n]*h2[n]');
subplot(2,1,2),stem(nw,w2),axis([0,13,ylim])
xlabel('nw');ylabel('x1[n]*h3[n]');

