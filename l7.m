%To study the implementation of edge detection using Gradient filter
%Developed By Jakesh Bohaju
%Date 04 July 2017
%___________________________________________________________________
%Three critical statements
%___________________________________________________________________
close all;
clear variables;
clc;
%___________________________________________________________________
%Read image
%___________________________________________________________________
i = imread('Y:\700310.jpg');
j = rgb2gray(i);
%___________________________________________________________________
%Gradient filter implementation
%___________________________________________________________________
h = [1 0 -1;2 0 -2;1 0 -1]; %3X3 prewitt filter
c = imfilter(j,h);  %filtering image with prewitt filter
%___________________________________________________________________
%x-axis robert filter
%___________________________________________________________________
robx = [1 0;-1 0];  %2X2 robert filter in x-axis
conx = conv2(j,robx,'valid');
%___________________________________________________________________
%y-axis robert filter
%___________________________________________________________________
roby = [1 -1;0 0];  %2X2 robert filter in y-axis
cony = conv2(j,roby,'valid');
%___________________________________________________________________
%Outputs
%___________________________________________________________________
figure;subplot(2,2,1),imshow(j),title('Original image');
subplot(2,2,2),imshow(c),title('Gradient filter image');
subplot(2,2,3),imshow(conx),title('robert filter in x-axis');
subplot(2,2,4),imshow(cony),title('robert filter in y-axis');
%___________________________________________________________________
%Filtering with built in gradient filters
%___________________________________________________________________
br = edge(j,'roberts');   %built in robert mask
bs = edge(j,'sobel');    %built in sobel mask
bp = edge(j,'prewitt');  %built in prewitt mask
bc = edge(j,'canny');    %built in canny mask
figure;
subplot(2,2,1),imshow(br),title('Built in robert filter');
subplot(2,2,2),imshow(bs),title('Built in soble filter');
subplot(2,2,3),imshow(bp),title('Built in prewitt filter');
subplot(2,2,4),imshow(bc),title('Built in canny filter');