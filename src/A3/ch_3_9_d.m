clear;
t=linspace (0,20,1000) ;
x2 = sign(cos(t));
ak = (1/(2*pi))*fft(x2);
apos_k=[];
aneg_k=[];
for k=1:10
    val = ak(k);
    if ak(k)<0
       apos_k = horzcat(apos_k,val);       
    else
        aneg_k =horzcat(aneg_k,val);
    end   
end
s1 = apos_k(1)*exp(1j*t)+aneg_k(1)*exp(-1j*t);
s2 = apos_k(2)*exp(1j*t)+aneg_k(2)*exp(-1j*t);
s3 = apos_k(3)*exp(1j*t)+aneg_k(3)*exp(-1j*t);%life forced me to write trash.
s4 = apos_k(4)*exp(1j*t)+aneg_k(4)*exp(-1j*t);
s5 = apos_k(5)*exp(1j*t)+aneg_k(5)*exp(-1j*t);
ssum = s1+s2+s3+s4+s5;
y1 = lsim(1,[1 1],s1,t);
y2 = lsim(1,[1 1],s2,t);
y3 = lsim(1,[1 1],s3,t);
y4 = lsim(1,[1 1],s4,t);
y5 = lsim(1,[1 1],s5,t);
ysum1=y1+y2+y3+y4+y5;
ysum2 =lsim(1,[1 1],ssum,t);
figure;
subplot(211);
plot(t,real(ysum1));
xlabel('t'),ylabel('ysum1');
legend('ysum1 ');
title('ysum1 by adding ys up');
subplot(212);
plot(t,real(ysum2));
xlabel('t'),ylabel('ysum2');
legend('ysum2 ');
title('ysum2 by lsim to ssum');