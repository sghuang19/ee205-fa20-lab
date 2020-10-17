nx1 = 0:9;
nhf2 = 0:4;
x1 = [ones(1,5) zeros(1,5)];
hf2 = [1 -1 3 0 1];
w = (nx1+1) .* x1;

yf1 = conv(w,h1);
nyf1 = nx1(1)+nhf2(1):nx1(end)+nhf2(end);

xf1 = [0 zeros(1,4)]
hf1 = (nh1+1) .* xf1;

hseries = conv(hf1,hf2);
nhseries = nh1(1)+nx1:nh1(end)+nh1(end);

yf2 = conv(x1,hseries);
nyf2 = nx1(1)+nhseries(1):nx1(end)+nhseries(end);

subplot(2,1,1),stem(nyf1,yf1),axis([0,18,ylim])
xlabel('n');ylabel('ye1 = x1[n]*he1[n]');title('ye1');
subplot(2,1,2),stem(nyf2,yf1),axis([0,18,ylim])
xlabel('n');ylabel('ye1 = x1[n]*he1[n]');title('ye1');


