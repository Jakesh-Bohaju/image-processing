%Title : To demonstrate various point operation in a given image
%Developed by : Jakesh
%Date : 5th June 2017
%_________________________________________________________________
%Three critical statement
%_________________________________________________________________
close all;
clear variable;
clc;
%_________________________________________________________________
%Read an image from user
%_________________________________________________________________
img = imread('Y:\700310.jpg');      %image read
figure;     %creates empty image
hold on;
subplot(2,2,1);
imshow(img);        %display image
title('Original Image');
%_________________________________________________________________
%Negative image transformation of an image
%_________________________________________________________________
z = 255-img;        %Using negative transformation S=T(r)=255-r
hold on;
subplot(2,2,2);
imshow(z);        
title('Negaative Image');
%_________________________________________________________________
%Grayscale image transformation of an image
%_________________________________________________________________
x = rgb2gray(img);      %built in command for gray scale image     
hold on;
subplot(2,2,3);
imshow(x);        
title('Grayscale Image');
%_________________________________________________________________
%Black and White image transformation of an image
%_________________________________________________________________
y = im2bw(img);      %built in command for black and white image
hold on;
subplot(2,2,4);
imshow(y);        
title('Black and White Image');
