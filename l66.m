%To study different filters response for noise
%removal from aan image
%Developed By Jakesh Bohaju
%Date 27 June 2017
%______________________________________________________________
%Three critical statements
%______________________________________________________________
close all;
clear variables;
clc;
%______________________________________________________________
%input image
%______________________________________________________________
I=imread('Y:\700310.jpg');
i=rgb2gray(I);
%______________________________________________________________
%Averaging filter /Mean filter mask
%______________________________________________________________
% h=[1 1 1 1 1 ;1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1]/25;
h=ones(3,3)/9;
result=imfilter(i,h);% filter response of mean filter
%______________________________________________________________
%Weighted mean filter
%______________________________________________________________
h2=[1 2 1;2 4 2;1 2 1]/16;
result1=imfilter(i,h2);
%______________________________________________________________
%Effect of low pass filter on salt and pepper noise
%______________________________________________________________
J=imnoise(i,'salt & pepper',0.03);
result2=imfilter(J,h);
%______________________________________________________________
%Gaussian noise image
%______________________________________________________________
an=imnoise(i,'gaussian',0.01);
result3=imfilter(an,h);
%______________________________________________________________
%Applying median filter to gaussian noise
%______________________________________________________________
A=medfilt2(an,[3 3]);
%______________________________________________________________
%Gaussian filter design
%______________________________________________________________
%
sigma=3;
cutoff=ceil(3*sigma);
k=fspecial('gaussian',2*cutoff+1,sigma);
%______________________________________________________________
%gaussian filter effect on salt and peppper noise
%______________________________________________________________
result4=imfilter(J,k);
%______________________________________________________________
%gaussian filter effect on Gaussian noise
%______________________________________________________________
result5=imfilter(an,k);
%______________________________________________________________
%Weiner filter effect on Gaussian noise
%______________________________________________________________
w=wiener2(an,[3 3]);
%______________________________________________________________
%Output of filters
%______________________________________________________________
figure;
subplot(2,3,1),imshow(i),title('original image');
subplot(2,3,2),imshow(result),title('mean filter');
subplot(2,3,3),imshow(result1),title('weighted mean');
subplot(2,3,4),imshow(w),title('applying weiner filter');
subplot(2,3,5),imshow(J);title('image with salt &pepper noise');
subplot(2,3,6),imshow(an),title('image with gaussian noise');
figure;
subplot(2,3,1),imshow(A),
title('median filter on gaussian noise');
subplot(2,3,3),imshow(result2),
title('mean filter on salt and pepper noise');
subplot(2,3,2),imshow(result3),
title('mean filter on gaussian noise');
subplot(2,3,4),imshow(result4),
title('gaussian filter on salt and pepper noise');
subplot(2,3,5),imshow(result5),
title('gaussian filter on Gaussian noise');

%______________________________________________________________
%frequency responses of filters
%______________________________________________________________
figure;
subplot(1,3,1),freqz2(A);title('medaian Filter Response');
subplot(1,3,2),freqz2(h);title('averaging Filter Response');
subplot(1,3,3),freqz2(k);title('gaussian Filter Response');