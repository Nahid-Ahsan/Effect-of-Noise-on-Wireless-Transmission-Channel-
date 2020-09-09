fs = 8000; fm = 50; fc = 400;
t = 0:1/fs: 0.05;
%Generate square wave by using cosine wave
% square message wave
Am = 1;
x = (square(2*pi*fm*t, 50) + Am)/2;
figure(1)
plot(t, x, 'linewidth', 1.25);
title('Square Wave Modulating Input To Transmitter');
grid on
saveas(gcf, 'Ask_squaresignal.png');
% Carrier Signal
car = sin(2*pi*fc*t);%Sinewave carrier waveform
ask = x.*car;%modulate carrier(ASK or BPSK)
figure(2)
plot(t, ask, 'linewidth', 1.25);
title('Modulated Sinewave Carrier Waveform');
grid on;
saveas(gcf, 'Ask_carriersignal.png');
%Noise generator SNR=Eb/No=20log(Signalrms/Noiserms)
vn=.1; %set noise level 0.1~=6db=SNR=Eb/No
noise=vn*(randn(size(t)));%noise generator
figure(3)
plot(t , noise, 'linewidth', 1.25);
grid on;
title('Noise Level');
saveas(gcf, 'Ask_noisegenerator.png');
% Noisy Signal
askn=(ask+noise); %modulated carrier plus noise
figure(4)
plot(t,askn, 'linewidth', 1.25);
title('Modulated Carrier Waveform Plus Noise');
