//Representation of Basic signals
//Unit Impulse Signal% 
n1=input('Enter the no of samples'); 
x1=[-n1:1:n1];
y1=[zeros(1,n1),ones(1,1),zeros(1,n1)]; 
subplot(2,3,1);
plot2d3(x1,y1);  
xlabel('Time Period');  
ylabel('Amplitude');
title('Unit Impulse Signal');
//Unit Step Signal%  
n2=input('Enter the no of samples'); 
x2=[0:1:n2];
y2=ones(1,n2+1);  subplot(2,3,2);
plot2d3(x2,y2);  
xlabel('Time Period'); 
ylabel('Amplitude');  
title('Unit Step Signal');
//Unit Ramp Signal
xlabel('Time Period');  ylabel('Amplitude');  title('Unit Ramp Signal');
//Exponential Signal%
n4=input('Enter the length of the signal');  
a=input('Enter the value of a:'); 
x4=[0:1:n4];
y4=a*exp(x4);  subplot(2,3,4);
plot2d3(x4,y4);  xlabel('Time Period');  ylabel('Amplitude');
title('Exponential Signal');
//Sinusoidal Signal 
x5=[-%pi:0.1:%pi]; 
y5=sin(2*%pi*x5); 
subplot(2,3,5);
plot(x5,y5);  xlabel('Time Period');
ylabel('Amplitude');  title('Sinusoidal Signal');
//Cosine Signal
x6=[-%pi:0.1:%pi];  y6=cos(2*%pi*x5);  subplot(2,3,6);
plot(x6,y6);  xlabel('Time Period');  ylabel('Amplitude');
title('Cosine Signal')
