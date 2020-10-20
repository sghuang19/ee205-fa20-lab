nx1 = 0:9;
nh1 = 0:4;
x1 = [ones(1, 5) zeros(1, 5)];
h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];
h3 = h1 + h2;

nw = 0:13;
w1 = conv(x1, h1) + conv(x1, h2);
w2 = conv(x1, h3);

subplot(2, 1, 1), stem(nw, w1), axis([0, 13, ylim])
xlabel('n_w'); ylabel('w_1')
title('w_1[n] = x_1[n] * h_1[n] + x_1[n] * h_2[n]')
subplot(2, 1, 2)
stem(nw, w2)
axis([0, 13, ylim])
xlabel('n_w')
ylabel('w_2')
title('w_2[n] = x_1[n] * (h_1[n] + h_2[n])')
% set(get(gca, 'title'), 'Interpreter', 'latex');
