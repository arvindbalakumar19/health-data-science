clear all
 clc
 //close all
 [filename, pathname] = uigetfile('*.dat', 'Open file .dat');// only image Bitmap
 if isequal(filename, 0) || isequal(pathname, 0)
 disp('File input canceled.');
 ECG_Data = [];
else
 fid=mtlb_fopen(filename,'rb');
 end;
 time=10;
 subplot(3,2,1);
 //f=mtlb_fread(fid,2*360*time,'ubit12');
 f=mtlb_fread(fid,2*300*time);
 mclose(fid);
 //Orig_Sig=f(1:2:length(f));
 x=f(1:2:70);
 plot(x)
xlabel('time');
 ylabel('amplitude');
 title('ecg');
 e=rand(80,1);
 subplot(3,2,2);
 plot(e);
 xlabel('time');
 ylabel('amplitude');
