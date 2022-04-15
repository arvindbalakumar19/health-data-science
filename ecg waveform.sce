//Representation of ECG form MIT database as .dat file
clear all
clc
//close all
[filename, pathname] = uigetfile('*.dat', 'Open file .dat');// only image Bitmap
if isequal(filename, 0) || isequal(pathname, 0)   
    disp('File input canceled.');  
   ECG_Data = [];  
else;
fid=mtlb_fopen(filename,'r');
end;
time=10;
f=mtlb_fread(fid);
Orig_Sig=f(1:length(f));
//plot(Orig_Sig(1:2:length(f)))
plot(Orig_Sig(8:2:30))
