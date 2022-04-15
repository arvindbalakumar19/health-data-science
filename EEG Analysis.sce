x=[0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1,0,0.5,1];
subplot(3,2,1);
plot(x);
xlabel('time');
ylabel('amplitude');
title('eeg');

e=rand(80,1);
subplot(3,2,2);
plot(e);
xlabel('time');
ylabel('amplitude');
title('random noise');

y=conv(x,e);
subplot(3,2,3);
plot(y);
xlabel('time');
ylabel('amplitude');
title('nosiy signal');

h=[ones(1,26)]/26;
y1=conv(h,y);
subplot(3,2,4);
plot(y1);
xlabel('time');
ylabel('amplitude');
title('fitered output');

y2=fft(y1);
subplot(3,2,5);
plot(y2);
xlabel('time');
ylabel('amplitude');
title('y2');

