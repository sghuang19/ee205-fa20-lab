function a = dtfs(x, n_init)
    N = size(x, 2);
    a = zeros(1, N);

    for k = 1:N

        for n = 1:N
            a(k) = a(k) + 1 / N * x(n) * exp(-1j * (k - 1) * 2 * pi / N * (n + n_init - 1));
        end

    end

end
