x=[ 1 0 1 0 1 0 1 1 1];                                    % Binary Information
bp=.000001;                                                    % bit period
disp(' Binary information at Transmitter :');
disp(x);
bit=[]; 
for n=1:1:length(x)
    if x(n)==1;
       se=ones(1,100);
    else x(n)==0;
        se=zeros(1,100);
    end
     bit=[bit se];
end
t1=bp/100:bp/100:100*length(x)*(bp/100);
figure(1)
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 bp*length(x) -.5 1.5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('transmitting information as digital signal');
saveas(gcf, 'Fsk_digitalsignal.png');
 
A=5;                                          % Amplitude of carrier signal
br=1/bp;                                                         % bit rate
f1=br*8;                           % carrier frequency for information as 1
f2=br*2;                           % carrier frequency for information as 0
t2=bp/99:bp/99:bp;                 
ss=length(t2);
fsk=[];
for (i=1:1:length(x))
    if (x(i)==1)
        y=A*cos(2*pi*f1*t2);
    else
        y=A*cos(2*pi*f2*t2);
    end
    fsk=[fsk y];
end
t3=bp/99:bp/99:bp*length(x);
figure(2)
plot(t3,fsk);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('waveform for binary FSK modulation coresponding binary information');
saveas(gcf, 'FSK_waveform_for_BFSK.png');
%Noise generator SNR=Eb/No=20log(Signalrms/Noiserms)
vn=.1; %set noise level 0.1~=6db=SNR=Eb/No
noise=vn*(randn(size(t3)));%noise generator
figure(3)
plot(t3 , noise, 'linewidth', 1.25);
grid on;
title('Noise Level');
saveas(gcf, 'Fsk_Noisegenerator.png');
 
% Noisy Signal
fskn=(fsk+noise); %modulated carrier plus noise
figure(4)
plot(t3,fskn, 'linewidth', 1.25);
title('Modulated Carrier Waveform Plus Noise');
grid on;
saveas(gcf, 'FSK_noisysignal.png');
