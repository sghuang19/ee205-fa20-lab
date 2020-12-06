
## Task 1

After loading the voice signal, we plot the original signal with time in the first figure. There are obviously 11 signal blocks on the plot which corresponds to the 11 words the woman said. First, we pack the whole resynthesis process into one method called vocoder:

```matlab
function [sync] = vocoder(LPF,N,sig,fs)
%N:the number we divide the frequency
%LPF:cutoff frequency when extract envelope
%sig:the signal to be operated
%fs:the sampling rate
sync=[zeros(1,length(sig))]';
[LPF_b,LPF_a]=butter(4,LPF/(fs/2));
for i=1:N
    [l,h]=getFreq(N,i);
    [BP_b,BP_a]=butter(4,[l,h]/(fs/2));
    y=abs(filter(BP_b,BP_a,sig));
    enve=filter(LPF_b,LPF_a,y);
    n=1:length(y);dt=n/fs;f1=(l+h)/2;
    sin1=sin(2*pi*f1*dt)';
    %enve=enve/norm(enve)*norm(sig);
    sync=sync+enve.*sin1;
end
sync=sync/norm(sync)*norm(sig);
end
```

Then we use circulation to generate the signal after different resynthesis and their power spectrum density. 
In task1, we set LPF to be 50 Hz and vary the number of divided bands.
The figures below are the comparison of audio waves of synthesized sentence and their PSDs (unit: dB) with different numbers of bands N=1,2,4,6,8 and same cutting frequency F=50Hz.

For different generated sentences, we forecasted the sentences to 5 volunteers to find the intelligibility of different numbers of bands. The result is they can not figure out what the sentences exactly were saying for all the signals. But they can figure out the similar voice’s characters at N=6 and N=8 such as numbers of words, the up-down tone of voices and so on.

Comparing the plots of the original signal and the synthesis signal, we can see that when N is growing bigger, the details of signals are shown more. This is because the variety of frequency of the components(sine-waves) is richer when N is growing.  

Comparing the PSD of them, we can tell the main frequency of synthesis signal is exactly corresponding to the frequency of the middle frequency of divided band.

And the number of pitch is equal to the number of bands. Whatever, since the filters here are all not ideal, then other frequency still exists. 

---

## Task 2

In this task, instead of changing the number of bands, we try to figure out the effect of cut-off frequency towards the speech signal. The plots show the figure of speech signal pass through low pass filters with cut-0ff frequency as 20Hz, 50 Hz, 100 Hz and 200 Hz.

From the plots, we can easily see that the power spectrum intensity of the speech signal after processing have four peak, since it is matched with four sine signals in different frequency range. With the increase in cut-off frequency, the intensity is getting higher, this is because with higher cut-off frequency for a low pass filter, the more high frequency area it can pass, thus more details are shown.

After hearing the resulting signal, we can make a further conclusion that the higher the cutoff frequency, the easier for listener to understand the meaning of the speech signal. 

To test our result, we invited five volunteers to hear the four resulting signals,we find that only when N = 400 that the listeners can understand the meaning.

---

## Task 3

After loading the voice signal, we plot the original signal with time in the first figure. There are obviously 11 signal blocks on the plot which corresponds to the 11 words the woman said. First, we pack the whole resynthesis process into one method called vocoder:

```matlab
function [sync] = vocoder(LPF,N,sig,fs)
%N:the number we divide the frequency
%LPF:cutoff frequency when extract envelope
%sig:the signal to be operated
%fs:the sampling rate
sync=[zeros(1,length(sig))]';
[LPF_b,LPF_a]=butter(4,LPF/(fs/2));
for i=1:N
    [l,h]=getFreq(N,i);
    [BP_b,BP_a]=butter(4,[l,h]/(fs/2));
    y=abs(filter(BP_b,BP_a,sig));
    enve=filter(LPF_b,LPF_a,y);
    n=1:length(y);dt=n/fs;f1=(l+h)/2;
    sin1=sin(2*pi*f1*dt)';
    %enve=enve/norm(enve)*norm(sig);
    sync=sync+enve.*sin1;
end
sync=sync/norm(sync)*norm(sig);
end
```

Then we use circulation to generate the signal after different resynthesis and their power spectrum density. 
In task1, we set LPF to be 50 Hz and vary the number of divided bands.
The figures below are the comparison of audio waves of synthesized sentence and their PSDs (unit: dB) with different numbers of bands N=1,2,4,6,8 and same cutting frequency F=50Hz.

For different generated sentences, we forecasted the sentences to 5 volunteers to find the intelligibility of different numbers of bands. The result is they can not figure out what the sentences exactly were saying for all the signals. But they can figure out the similar voice’s characters at N=6 and N=8 such as numbers of words, the up-down tone of voices and so on.

Comparing the plots of the original signal and the synthesis signal, we can see that when N is growing bigger, the details of signals are shown more. This is because the variety of frequency of the components(sine-waves) is richer when N is growing.  

Comparing the PSD of them, we can tell the main frequency of synthesis signal is exactly corresponding to the frequency of the middle frequency of divided band.

And the number of pitch is equal to the number of bands. Whatever, since the filters here are all not ideal, then other frequency still exists. 

---

### Task 4

In this task, base on task 2, we add white noise into the resulting signals.The plot for PSD still have four peak, since we cut it into four signals, processing them and add them up. And with higher cutoff frequency, the intensity is higher in general.

However, after adding white noise, we can also find out that for the PSD plot, intensity in frequencies away from peaks get higher in general. We think it is because the white noise have an even energy in all frequencies, so the total energy in all frequencies will be higher after adding white noise.

After hearing the signals, we find that for the first three results, which is when f_stop = 20Hz, 50Hz and 100Hz. The voice seems to be covered totally by white noise, the only result we enable to hear the content is the one that with cutoff frequency 400Hz. 