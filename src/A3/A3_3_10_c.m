fftcomps = zeros(1, 5);
N = [8 32 64 128 256] .* 10;

for index = 1:size(N, 2)
    x = (0.9).^(0:N(index) - 1);
    clear X
    tic
    X = fft(x, 0);
    fftcomps(index) = toc;
end

disp(fftcomps)

A3_3_10_b
loglog(N, dtfscomps)
hold on
loglog(N, fftcomps)
legend('dtfs', 'fft')
title('The runtime of dtfs() and fft()')
grid on
