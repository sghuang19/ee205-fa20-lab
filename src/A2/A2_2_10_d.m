load lineup.mat;
sound(y,8192)

a = [1 zeros(1,999) 0.5];

r = filter(1,a,y);

subplot(2,1,1);
plot(y);
xlabel('n');
ylabel('Output');
title('The Origin Sound')
subplot (2,1,2);
plot(r);
xlabel('n');
ylabel('Output');
title('The Sound Without Echo')


r = filter(1, a, y);
stem(n, r)
