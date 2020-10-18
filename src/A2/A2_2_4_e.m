nx1 = 0:9;
nh1 = 0:4;
nh2 = 2:6;
x1 = [ones(1,5) zeros(1,5)];
h1 = [1 -1 3 0 1];
h2 = h1;

ny1 = nx1(1)+nh1(1):nx1(end)+nh1(end);
ny2 = nx1(1)+nh2(1):nx1(end)+nh2(end);
y1 = conv(x1,h1);
y2 = conv(x1,h2);

subplot(2,1,1),stem(ny1,y1),axis([0,15,ylim])
xlabel('n');ylabel('ye1 = x1[n]*he1[n]');title('ye1');
subplot(2,1,2),stem(ny2,y2),axis([0,15,ylim])
xlabel('n');ylabel('ye2 = x1[n]*he2[n]');title('ye2');