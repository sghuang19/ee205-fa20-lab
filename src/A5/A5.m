close all

%% part 1
[x, Fs] = audioread('C_01_01.wav');
sig = repmat(x, 5, 1);
% Fs = Fs;
% sound(sig, Fs)

[pxx, w] = periodogram(sig, [], 512, Fs);
plot(w, pxx)
title('power spectrum density of the speech signal')
xlabel('frequency')
ylabel('power spectral density')

b = fir2(3000, w / (Fs / 2), sqrt(pxx / max(pxx)));
[N, ~] = size(sig);
noise = 1 - 2 * rand(N, 1);

[pxx, w] = periodogram(noise);

%% part 2
ssn = filter(b, 1, noise);
snr = 20 * log10(norm(sig) / norm(ssn * norm(sig) / norm(ssn) * 10^(1/4)))
y = sig + 10^(-1/4) * ssn;
y = y / norm(y) * norm(sig);
norm(sig)
norm(y)

%% part 3
y = abs(y);
figure

[b, a] = butter(2, 100 / (Fs / 2));
env = filter(b, a, y);
subplot(3, 1, 1)
plot(env)
title('f_{cut} = 100Hz')
hold on

[b, a] = butter(2, 200 / (Fs / 2));
env = filter(b, a, y);
subplot(3, 1, 2)
plot(env)
title('f_{cut} = 200Hz')
hold on

[b, a] = butter(2, 300 / (Fs / 2));
subplot(3, 1, 3)
env = filter(b, a, y);
plot(env)
title('f_{cut} = 300Hz')

% ====================================

[b, a] = butter(2, 200 / (Fs / 2));
env = filter(b, a, y);
subplot(2, 1, 1)
plot(env)
title('2nd-order')
hold on

[b, a] = butter(6, 200 / (Fs / 2));
env = filter(b, a, y);
subplot(2, 1, 2)
plot(env)
title('6th-order')

% ===============================
