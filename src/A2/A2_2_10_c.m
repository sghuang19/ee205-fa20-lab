n = 0:4000;
d = [1 zeros(1,4000)];
a1 = [1 zeros(1,3999) 0.5];
b1 = 1;

her = filter(b1,a1,d);

stem(n,her);
xlabel('n');ylabel('her');title('impulse response for d');
