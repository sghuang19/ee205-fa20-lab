k = 0:19;
% range for input
n = -20:99;
a_x = [-1/2 zeros(1, 7) 3/4 0 3/4 zeros(1, 7) -1/2 0];
x_20 = 20 * ifft(a_x);
x = [x_20 x_20 x_20 x_20 x_20 x_20];

% System1
a1 = [1 -0.8];
b1 = 1;
y1 = filter(b1,a1,x);
% System2
a2 = [1 0.8];
b2 = 1;
y2 = filter(b2,a2,x);

% plot
subplot(2,1,1)
stem(n,abs(y1));
xlim([0,99])
xlabel('n')
ylabel('y1')

subplot(2,1,2)
stem(n,abs(y2));
xlim([0,99])
xlabel('n')
ylabel('y2')



