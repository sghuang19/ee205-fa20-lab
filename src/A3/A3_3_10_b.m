dtfscomps = zeros(1, 5);
N = [8 32 64 128 256] .* 10;

for index = 1:size(N, 2)
    x = (0.9).^(0:N(index) - 1);
    clear X
    tic
    X = dtfs(x, 0);
    dtfscomps(index) = toc;
end

disp(dtfscomps)
