n = 0:4;
e1 = zeros(1, 5);
x = zeros(1, 5);

for t = 0:4
    e1(t + 1) = exp(j * t * (2 * pi / 5));
end

for t = 0:4
    x(t + 1) = sum(a .* (e1.^t));
end

subplot(2, 1, 1)
stem(n, real(x))
xlabel('n')
ylabel('real(x)')

subplot(2, 1, 2)
stem(n, imag(x))
xlabel('n')
ylabel('imag(x)')
