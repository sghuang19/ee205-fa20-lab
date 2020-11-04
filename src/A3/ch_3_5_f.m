x3=[ones(1,8),zeros(1,24)];
a3=fft(x3)/32;

a3_2=[a3(1:5),zeros(1,27)];

a3_8=[a3(1:17),zeros(1,15)];
a3_12=[a3(1:25),zeros(1,7)];
for n=1:32
    x3_2(n)=a3(1);
    for i=1:2
        x3_2(n)=x3_2(n)+a3(i+1)*exp(j*i*pi*(n-1)/16)+conj(a3(i+1))*exp((-j)*i*pi*(n-1)/16);
    end
end

for n=1:32
    x3_8(n)=a3(1);
    for i=1:8
        x3_8(n)=x3_8(n)+a3(i+1)*exp(j*i*pi*(n-1)/16)+conj(a3(i+1))*exp((-j)*i*pi*(n-1)/16);
    end
end
for n=1:32
    x3_12(n)=a3(1);
    for i=1:12
        x3_12(n)=x3_12(n)+a3(i+1)*exp(j*i*pi*(n-1)/16)+conj(a3(i+1))*exp((-j)*i*pi*(n-1)/16);
    end
end


x3_all=32*ifft(a3);
subplot(411);
stem([0:31],real(x3_2));
xlabel('n');ylabel('x3_2[n]');
subplot(412);
stem([0:31],real(x3_8));
xlabel('n');ylabel('x3_8[n]');
subplot(413);
stem([0:31],real(x3_12));
xlabel('n');ylabel('x3_1_2[n]');
subplot(414);
stem([0:31],real(x3_all));
xlabel('n');ylabel('x3_a_l_l[n]');