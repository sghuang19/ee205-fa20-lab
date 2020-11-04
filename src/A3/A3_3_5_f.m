N3 = 32;
x3 = [ones(1, 8) zeros(1, 24)];
a3 = 1/N3*fft(x3);

a3_2 = [a3(14:18) zeros(1,27)];
a3_8 = [a3(8:24) zeros(1,15)];
a3_12 =[a3(4:28) zeros(1,7)];

x3_2 = zeros(1,32);
x3_8 = zeros(1,32);
x3_12 = zeros(1,32);
x3_all = zeros(1,32);

r = 0:31;

for n = 1:32
    x3_2(n) = a3(1);
    for t = 1:2 
        x3_2(n) = x3_2(n)+a3(t+1)*exp(j*t*pi*(n-1)/16)+conj(a3(t+1))*exp((-j)*t*pi*(n-1)/16);
    end
end


for n = 1:32
    x3_8(n) = a3(1);
    for t = 1:8
        x3_8(n) = x3_8(n) + a3(t+1)*exp(j*t*2*pi*(n-1)/32) + conj(a3(t+1))* exp(-j*t*2*pi*(n-1)/32);
    end
end

for n = 1:32
    x3_12(n) = a3(1);
    for t = 1:12 
        x3_12(n) = x3_12(n) + a3(t+1)*exp(j*t*2*pi*(n-1)/32) + conj(a3(t+1))* exp(-j*t*2*pi*(n-1)/32);
    end
end

for n = 1:32
    x3_all(n) = a3(1);
    for t = 0:15
        x3_all(n) = a3(t+1)*exp(j*t*2*pi*(n-1)/32) + conj(a3(t+1))* exp(-j*t*2*pi*(n-1)/32);
    end
end

subplot(2, 2, 1)
stem([0:31],real(x3_2))
xlabel('n')
ylabel('x3_2','Interpreter', 'none')

subplot(2, 2, 2)
stem(r,real(x3_8))
xlabel('n')
ylabel('x3_8','Interpreter', 'none')

subplot(2, 2, 3)
stem(r,real(x3_12))
xlabel('n')
ylabel('x3_12','Interpreter', 'none')

subplot(2, 2, 4)
stem(r,real(x3_all))
xlabel('n')
ylabel('x3_all','Interpreter', 'none')


