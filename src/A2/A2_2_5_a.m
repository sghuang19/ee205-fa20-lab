n = 0:5;
x1 = [1 zeros(1,4)];
x2 = [0 1 zeros(1,3)];
x3 = x1 + 2*x2;

b1 = [1 -1 -1];% input index
a1 = [1 0 0 ];%output index

w1 = filter(b1,a1,x1);
w2 = filter(b1,a1,x2);
w3 = filter(b1,a1,x3);
w4 = w1 + 2*w2;

