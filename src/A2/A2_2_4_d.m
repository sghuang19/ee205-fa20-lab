nx1 = 0:9;
nh1 = 0:4;
x1 = [ones(1,5) zeros(1,5)];
h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];

nw = 0:13;

h3 = conv(x1, h1);
h4 = conv(h1, h2);

w1 = conv(h3,h2);
nw1 = 0:17;
w2 = conv(x1,h4);
nw2 = 0:17;

subplot(2,1,1),stem(nw1,w1),axis([0,17,ylim])
xlabel('nw1');ylabel('(x1[n]*h1[n]])*h2[n]');
subplot(2,1,2),stem(nw2,w2),axis([0,17,ylim])
xlabel('nw2');ylabel('x1[n]*(h1[n]*h2[n])');


