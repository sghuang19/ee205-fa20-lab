close all
[y, fs] = audioread('C_01_01.wav');
sig = repmat(y, 5, 1);
% sound(sig, fs)


[Pxx, w] = periodogram(sig, [], 512, fs);
b = fir2(3000, w / (fs / 2), sqrt(Pxx / max(Pxx)));
plot(w, Pxx)
xlabel('frequency')
ylabel('power spectral density')

[N, ~] = size(sig);
noise = 1 - 2 * rand(N, 1);
[Pxx, w] = periodogram(noise);

snr = filter(b, 1, noise);
