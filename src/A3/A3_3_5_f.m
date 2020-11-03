a3_2 = a3(14:18);
a3_8 = a3(8:24);
a3_12 = a3(4:28);

e1 = zeros(1,5);
e2 = zeros(1,17);
e3 = zeros(1,25);
e4 = zeros(1,32);

x3_2 = zeros(1,32);
x3_8 = zeros(1,32);
x3_12 = zeros(1,32);
x3_all = zeros(1,32);

n = 0:31;

for t = -2:2
    e1(t+3) = exp(j*2*t*pi/32);
end

for t = -8:8
    e2(t+9) = exp(j*2*t*pi/32);
end

for t = -12:12
    e3(t+13) = exp(j*2*t*pi/32);
end

for t = -15:16
    e4(t+16) = exp(j*2*t*pi/32);
end

for t = 0:31
    x3_2(t+1) = sum(a3_2.*(e1.^t));
    x3_8(t+1) = sum(a3_8.*(e2.^t));
    x3_12(t+1) = sum(a3_12.*(e3.^t));
    x3_all(t+1) = sum(a3.*(e4.^t));
end

subplot(2, 2, 1)
stem(n,real(x3_2))
xlabel('n')
ylabel('x3_2','Interpreter', 'none')

subplot(2, 2, 2)
stem(n,real(x3_8))
xlabel('n')
ylabel('x3_8','Interpreter', 'none')

subplot(2, 2, 3)
stem(n,real(x3_12))
xlabel('n')
ylabel('x3_12','Interpreter', 'none')

subplot(2, 2, 4)
stem(n,real(x3_all))
xlabel('n')
ylabel('x3_all','Interpreter', 'none')


