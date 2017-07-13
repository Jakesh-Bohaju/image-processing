%Title : To demonstrate log and power transformation of point operation
%Developed by : Jakesh Bohaju
%Date : 6th June 2017
%_________________________________________________________________
%Three critical statement
%_________________________________________________________________
close all;
clear variable;
clc;
%_________________________________________________________________
%Read an image and display it
%_________________________________________________________________
img = imread('Y:\700310.jpg');      %image read
imshow(img);
img2=im2double(img); %converting the image pixel to double value
x=img2; %declearing an output image of size as size of input image
y=img2;
[r,c]=size(x); %determining the size of row and column
factor=5;
gamma=15;
%_________________________________________________________________
%Calculation for log and power transformation
%_________________________________________________________________
for i=1:r
    for j=1:c
        x(i,j)=factor*log(1+img2(i,j)); %log transformation s=c*log(1+r)
        y(i,j)=factor*img2(i,j)^gamma; %power transformation s=c*r^gamma
    end
end
%_________________________________________________________________
%For output
%_________________________________________________________________
subplot(1,3,1), imshow(img2), title('Original image');
subplot(1,3,2), imshow(x), title('Log transformed image');
subplot(1,3,3), imshow(y), title('Power transformed image');
