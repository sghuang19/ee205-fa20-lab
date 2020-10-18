n = 0:5;
x1 = [1 zeros(1,5)];
x2 = [0 1 zeros(1,4)];
x3 = x1 + 2*x2;

b1 = [1 -1 -1];% input index
a1 = [1 0 0 ];%output index

w1 = filter(b1,a1,x1);
w2 = filter(b1,a1,x2);
w3 = filter(b1,a1,x3);
w4 = w1 + 2*w2;

subplot(2,2,1),stem(n,w1),axis([0,5,ylim])
xlabel('n');ylabel('w1');title('w1[n] = x1[n] - x1[n-1] - x1[n-2]');
subplot(2,2,2),stem(n,w2),axis([0,5,ylim])
xlabel('n');ylabel('w2');title('w2[n] = x2[n] - x2[n-1] - x2[n-2]');
subplot(2,2,3),stem(n,w3),axis([0,5,ylim])
xlabel('n');ylabel('w3');title('w3[n] = x3[n] - x1[n-1] - x3[n-2]');
subplot(2,2,4),stem(n,w4),axis([0,5,ylim])
xlabel('n');ylabel('w4');title('w4[n] = w1[n] + 2*w2[n]');