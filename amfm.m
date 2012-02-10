% am qfm script
% Keiichi YASU
% 2011/11/03

% constant
t=[1:16000*5]/16000;
fc=1000;    % center freq. 
fmod=5;    % mod. freq.


% AM
am=sin(2*pi*(fc-fmod)*t)/4+sin(2*pi*fc*t)+sin(2*pi*(fc+fmod)*t)/4;

% FM
fm=cos(2*pi*(fc-fmod)*t)/4+sin(2*pi*fc*t)-cos(2*pi*(fc+fmod)*t)/4;

% plot result
plot(am)
hold on
plot(fm,'r');
