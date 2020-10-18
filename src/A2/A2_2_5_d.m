n = 0:19;
x = [1 zeros(1,19)];

%System1
a1 = [1 -0.6];
b1 = [1 0];
h1 = filter(b1,a1,x);

%System2
h2 = zeros(1,20);
h2(1) = 1;%cuz h2(i) = 0 if i <1, h2[0] = x[0] = 1, h2[1] = h2[0] + 0;
for i= 1:19
    h2(i+1) = 0.6^i*h2(i) +x(i+1);
end

subplot(2,1,1),stem(n,h1),axis([0,19,ylim])
xlabel('n');ylabel('h1');title('h1[n] = 0.6*h1[n-1] + x[n]');
subplot(2,1,2),stem(n,h2),axis([0,19,ylim])
xlabel('n');ylabel('h2');title('h2[n] = 0.6^n*h2[n] + x[n]');