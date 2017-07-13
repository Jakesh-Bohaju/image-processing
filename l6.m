%To study of effect of bit plane slicing
%Developed By Jakesh Bohaju
%Date 27 June 2017
%______________________________________________________________
%Critical Three Statement
%______________________________________________________________
close all;
clear variable;
clc;
%______________________________________________________________
c = imread('Y:\700310.jpg');
c = rgb2gray(c);
cd = double(c);
figure;
subplot(1,3,1), imshow(c), title('Original Gray-scale image');
subplot(1,3,2), imshow(cd), title('Converted to double');
subplot(1,3,3), imshow(uint8(cd)), title('Double to unsigned');
impixelinfo;
cd(20,20); %intensity value at pixel 20X20
%______________________________________________________________
%Bit plane slicing
%______________________________________________________________
c0 = mod(cd,2);
c1 = mod(floor(cd/2),2);
c2 = mod(floor(cd/4),2);
c3 = mod(floor(cd/8),2);
c4 = mod(floor(cd/16),2);
c5 = mod(floor(cd/32),2);
c6 = mod(floor(cd/64),2);
c7 = mod(floor(cd/128),2);
%______________________________________________________________
%Output of bit plane slicing
%______________________________________________________________
figure;
subplot(4,4,1), imshow(c0), title('c0 image');
subplot(4,4,2), imshow(c1), title('c1 image');
subplot(4,4,3), imshow(c2), title('c2 image');
subplot(4,4,4), imshow(c3), title('c3 image');
subplot(4,4,5), imshow(c4), title('c4 image');
subplot(4,4,6), imshow(c5), title('c5 image');
subplot(4,4,7), imshow(c6), title('c6 image');
subplot(4,4,8), imshow(c7), title('c7 image');
%______________________________________________________________
%Integrated output of bit plane slicing
%______________________________________________________________
cc = 2*(2*(2*(2*(2*(2*(2*c7+c6)+c5)+c4)+c3)+c2)+c1)+c0;
figure;
imshow(uint8(cc));
title('Integrated output of bit plane slicing');