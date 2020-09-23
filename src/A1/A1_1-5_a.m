diffeqn(1, [1 1 1 1 1], 1)

function y = diffeqn(a, x, yn1)
    N = length(a)
    y(1) = a * yn1 + x(1)

    for index = 2:N
        y(index) = a * y(index - 1)
    end

end