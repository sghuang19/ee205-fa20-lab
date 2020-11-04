close all
clear

%% Problem e
N = 40;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

tic
y = conv([x x], h);
y_f40c = y(1, 1:N);
f40c = toc;

figure
stem(ny, y_f40c)
title('$$y[n]=\sum_{r=0}^{N-1}x[r]h[n-r]$$, $$N=40$$', 'Interpreter', 'latex')

%% Problem f
N = 80;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

tic
y = conv([x x], h);
y_f80c = y(1, 1:N);
f80c = toc;

figure
stem(ny, y_f80c)
title('$$y[n]=\sum_{r=0}^{N-1}x[r]h[n-r]$$, $$N=80$$', 'Interpreter', 'latex')

%% Problem g
N = 40;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

ax_40 = fft(x, N);
ah_40 = fft(h, N);
ay_40 = ax_40 .* ah_40;
y_f40f = ifft(ay_40, N);

figure
stem(ny, y_f40f)
hold on
stem(ny, y_f40c, '*')
legend('with fft()', 'with conv()')
title('$$y[n]=\sum_{r=0}^{N-1}x[r]h[n-r]$$, $$N=40$$', 'Interpreter', 'latex')

%% Problem h
N = 80;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

ax_80 = fft(x, N);
ah_80 = fft(h, N);
ay_80 = ax_80 .* ah_80;
y_f80f = ifft(ay_80, N);

figure
stem(ny, y_f80f)
hold on
stem(ny, y_f80c, '*')
legend('with fft()', 'with conv()')
title('$$y[n]=\sum_{r=0}^{N-1}x[r]h[n-r]$$, $$N=80$$', 'Interpreter', 'latex')
%% Problem i
disp(f40c / f40f)
disp(f80c / f80f)

N = 160;
n = 0:N - 1;
x = 0.9.^n;
h = 0.5.^n;
ny = 0:N - 1;

tic
y = conv([x x], h);
y_f160c = y(1, 1:N);
f160c = toc;

tic
ax = fft(x, N);
ah = fft(h, N);
ay = ax .* ah;
y_f160f = ifft(ay, N);
f160f = toc;

display(f160c / f160f)
