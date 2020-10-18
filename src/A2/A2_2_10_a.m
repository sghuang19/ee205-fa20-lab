n = 0:1000;
x = [1 zeros(1,1000)];
a1 = 1;
b1 = [1 zeros(1,999) 0.5];

y1 = filter(b1,a1,x);

stem(n, y1);
xlabel('n');ylabel('y1');title('y[n] = x[n] + 0.5x[n-1000]');
