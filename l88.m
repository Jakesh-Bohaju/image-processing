%To study videoinput
%Developed By Jakesh Bohaju
%Date 11 July 2017
%___________________________________________________________________
%Three critcal statement
%___________________________________________________________________
close all;
clear variables;
clc;
%___________________________________________________________________
%Start video input
%___________________________________________________________________
obj = videoinput('winvideo',1);
for i=1:10;
    img = getsnapshot(obj);
    fname = ['image' num2str(i)];
    disp(fname);
    imwrite(img,fname,'jpg');
    pause(2);
end