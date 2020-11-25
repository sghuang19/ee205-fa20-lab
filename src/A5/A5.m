close all

%% part 1
[x, fs] = audioread('C_01_01.wav');
sig = repmat(x, 5, 1);
% sound(sig, fs)

[Pxx, w] = periodogram(sig, [], 512, fs);
plot(w, Pxx)
title('power spectrum density of the speech signal')
xlabel('frequency')
ylabel('power spectral density')

b = fir2(3000, w / (fs / 2), sqrt(Pxx / max(Pxx)));
[N, ~] = size(sig);
noise = 1 - 2 * rand(N, 1);

[Pxx, w] = periodogram(noise);

%% part 2
ssn = filter(b, 1, noise);
snr = 20 * log10(norm(sig) / norm(ssn * norm(sig) / norm(ssn) * 10^(1/4)))
y = sig + 10^(-1/4) * ssn;
y = y / norm(y) * norm(sig);
norm(sig)
norm(y)
