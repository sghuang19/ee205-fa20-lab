n = 0:1000;
x = [1 zeros(1,1000)];
a1 = 1;
b1 = [1 zeros(1,999) 0.5];
he = filter(b1,a1,x);

n2 = 0:4000;
d = [1 zeros(1,4000)];
a2 = [1 zeros(1,3999) 0.5];
b2 = 1;

her = filter(b2,a2,d);

hoa = conv(he,her);
nhoa = 0:5000;

stem(nhoa,hoa);
xlabel('n');
ylabel('hoa');
title('convolution for he and her');
