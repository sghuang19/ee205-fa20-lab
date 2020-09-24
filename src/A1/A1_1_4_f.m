l1 = 5;
l2 = l1 -1;

%for time invariant and satble and invertible
%the origin function:x[n] = cos(n) and y = n*x[n]
n1 = [-l1:l1];
x1 = cos(n1);
y1 = n1.* x1;
%let the input signal have a time shift:x2[n] = x1[n-1]
n2 = [-l2:l2];
x2 = [0 cos(n2) 0];
y2 = n1.* x2;

stem(n1,y1,'*');
hold on
stem(n1,y2);

title('y = n*x[n]');
xlabel('Time');
ylabel('Output');
