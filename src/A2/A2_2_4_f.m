nx1 = 0:9;
nhf2 = 0:4;
x1 = [ones(1,5) zeros(1,5)];
hf2 = [1 -1 3 0 1];

w = (nx1+1) .* x1;

yf1 = conv(w,hf2);
nyf1 = nx1(1)+nhf2(1):nx1(end)+nhf2(end);

xf1 = [1 zeros(1,4)]
hf1 = (nhf2+1) .* xf1;

hseries = conv(hf1,hf2);
nhseries = nhf2(1)+nhf2(1):nhf2(end)+nhf2(end);

yf2 = conv(x1,hseries);
nyf2 = nx1(1)+nhseries(1):nx1(end)+nhseries(end);

subplot(2,1,1),stem(nyf1,yf1),axis([0,17,ylim])
xlabel('n');ylabel('yf1 = w[n]*hf2[n]');title('yf1');
subplot(2,1,2),stem(nyf2,yf2),axis([0,17,ylim])
xlabel('n');ylabel('yf2 = x1[n]*(hf1[n]*hf2[n]');title('yf2');


