%% Use window function to extract events and subsignals

% signal analyse
data = out.Original.Data;
time = out.Original.Time;
y = detrend(data);
[pks,locs] = findpeaks(y);
% signal period
T = max(diff(out.Original.Time(locs)));

% create window size
L = 10*T;   % L=126
dataLength = size((out.Original.Time),1);
dataset = floor(dataLength / L);

% original signal
figure(1)
plot(time,data);
title('original signal');
xlabel('time(s)');
ylabel('temperatur(degree)');

% rectangular window
figure(2)
w = rectwin(L);
for i = 1:dataset
      window = zeros(length(time),1);
      window(1+(i-1)*L:L*i) = w;
      sample = window.*data;
      
      subplot(2,1,i)
      plot(time,sample);
      title('rectangular window');
      xlabel('time(s)');
      ylabel('temperatur(degree)');
end

% Hanning window
figure(3)
w = hann(L);
for i = 1:dataset
      window = zeros(length(time),1);
      window(1+(i-1)*L:L*i) = w;
      sample = window.*data;
      
      subplot(2,1,i)
      plot(time,sample);
      title('Hanning window');
      xlabel('time(s)');
      ylabel('temperatur(degree)');
end

% win = windowDesigner;   % von Hann Fenster, DFT & FFT 
% set(win,'Length',L);

