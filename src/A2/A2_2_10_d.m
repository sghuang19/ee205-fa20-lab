load(lineup.mat,y);
a = [1 zeros(1,999) 0.5];

r = filter(1,a,y);
stem(n,r);

