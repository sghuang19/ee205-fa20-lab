n=[0:19];
x=[ones(1,20)];
a=[1,-0.6];
b=1;
s1=filter(1,a,x);
s2=[zeros(1,20)];
s2(1)=1;%y2(1)means y2[0]
for i=1:19
    s2(i+1)=0.6^(i)*s2(i)+x(i+1);
end
u=[ones(1,20)];
z1=conv(h1,u);
z2=conv(h2,u);
subplot(2,1,1);
hold on
stem(n,s1);
stem(n,z1(1:20),'*');
xlabel('n');
legend('s1[n]','z1[n]');
hold off
subplot(2,1,2);
hold on
stem(n,s2);
stem(n,z2(1:20),'*');
xlabel('n');
legend('s2[n]','z2[n]');
hold off