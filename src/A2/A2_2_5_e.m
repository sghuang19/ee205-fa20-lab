n = 0:19;
x1 = ones(1, 20);
%System1
a1 = [1 -0.6];
b1 = [1 0];
s1 = filter(b1, a1, x1);
%System2
s2 = zeros(1, 20);
s2(1) = 1; %cuz s2(i) = 0 if i <1, s2[0] = x[0] = 1, s2[1] = s2[0] + 0;

for i = 1:19
    s2(i + 1) = 0.6^i * s2(i) +x1(i + 1);
end

subplot(2, 1, 1)
stem(n, s1)
xlabel('n');
ylabel('s1');
title('s1[n] = 0.6*u[n-1] + u[n]');
subplot(2, 1, 2)
stem(n, s2)
xlabel('n');
ylabel('s2');
title('s2[n] = 0.6^n*s2[n-1] + u[n]');
