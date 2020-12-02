w1=hanning(51);
subplot(221)
plot(0:50,w1);
% wvtool(w);
[h1,w1]=freqz(w1,1);
subplot(222)
plot(w1/pi,20*log10(abs(h1)));
axis([0 1 -100 0]);

w2=hamming(51);
subplot(223)
plot(0:50,w2);
[h2,w2]=freqz(w2,1);
subplot(224)
plot(w2/pi,20*log10(abs(h2)));

clear;clc;
n=0:50;
w1=rectwin(51);
w2=hanning(51);
w3=hamming(51);
w4=gausswin(51,2.5);
% w5=blackman(51);
% w6=kaiser(51,4.55);
figure(1)
plot(n,w1,n,w2,'y',n,w3,'m',n,w4,'c');
legend('¾ØÐÎ´°','ººÄþ´°','ººÃ÷´°','¸ßË¹´°');
[h1,w1]=freqz(w1,1);
[h2,w2]=freqz(w2,1);
[h3,w3]=freqz(w3,1);
[h4,w4]=freqz(w4,1);
% [h5,w5]=freqz(w5,1);
% [h6,w6]=freqz(w6,1);
figure(2)
subplot(221)
plot(w1/pi,20*log10(abs(h1)));
axis([0 1 -100 50]);
title('¾ØÐÎ´°');xlabel('rad/s');ylabel('dB');
subplot(222)
plot(w2/pi,20*log10(abs(h2)));
axis([0 1 -100 50]);
title('ººÄþ´°');xlabel('rad/s');ylabel('dB');
subplot(223)
plot(w3/pi,20*log10(abs(h3)));
axis([0 1 -100 50]);
title('ººÃ÷´°');xlabel('rad/s');ylabel('dB');
subplot(224)
plot(w4/pi,20*log10(abs(h4)));
axis([0 1 -100 50]);
title('¸ßË¹´°');xlabel('rad/s');ylabel('dB');

% subplot(325)
% plot(w5/pi,20*log10(abs(h5)));
% axis([0 1 -100 50]);
% title('²¼À³¿ËÂü´°');xlabel('rad/s');ylabel('dB');
% subplot(326)
% plot(w6/pi,20*log10(abs(h6)));
% axis([0 1 -100 50]);
% title('¿­Èû´°');xlabel('rad/s');ylabel('dB');




