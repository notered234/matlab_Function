 
clear, close all
 
t =1/512:1/512:1;
y = 2*sin(2*pi*30*t)+sin(2*pi*60*t);
 
y30 = 2*sin(2*pi*30*t);
 
 
%fl=1;   % low-cutoff frequency, in Hz
fh=40;   % high-cutoff frequency, in Hz
samplerate = 512;
forder=6;
 
sigfilter1=filter_2sIIR(y,fh,samplerate,forder,'low')';
 
plot(t,sigfilter1);
hold on
 
plot(t,y30,'r');
figure
% NFFT = 2^nextpow2(); % Next power of 2 from length of y
Y = fft(y,512)/512;
f = samplerate/2*linspace(0,1,512/2+1);
plot(f,2*abs(Y(1:257))) 


