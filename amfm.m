% AM and qFM script
% Keiichi YASU
% 2011/11/03 : First commit
% 2017/05/19 : Change to use variables

% constant
sec = 5; % duration of sound in second
sf = 16000; % sampling frequency
fc=1000;    % center frequency
fmod=5;    % mod. frequency
t=[1:sf*sec]/sf; % time

% AM
am=sin(2*pi*(fc-fmod)*t)/4+sin(2*pi*fc*t)+sin(2*pi*(fc+fmod)*t)/4;

% FM
fm=cos(2*pi*(fc-fmod)*t)/4+sin(2*pi*fc*t)-cos(2*pi*(fc+fmod)*t)/4;

% plot result
plot(am)
hold on
plot(fm,'r');
