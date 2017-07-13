%To study the implementation of discrete cosine transform and
%inverse transformation
%Developed By Jakesh Bohaju
%Date 09 July 2017
%___________________________________________________________________
%Three critical statements
%___________________________________________________________________
close all;
clear variables;
clc;
%___________________________________________________________________
%Read image
%___________________________________________________________________
x = imread('Y:\700310.jpg');
x = rgb2gray(x);
f = dct2(x);    %built in dct
ff = idct2(f);  %built in inverse dct
figure;subplot(1,3,1),imshow(x),title('Original image');
subplot(1,3,2),imshow(f*0.01),title('Discrete Cosine Transform');
subplot(1,3,3),imshow(ff/255),title('Inverse transformation');
%___________________________________________________________________
%Block wise dct implementation
%___________________________________________________________________
x = imresize(x,[256 256]);  %resize image for blockeise dct
[r c] = size(x);
%___________________________________________________________________
%Variable initialization
%___________________________________________________________________
DF = zeros(r,c);
DFF = DF;   IDF = DF;   IDFF = DF;
depth = 5;
N = 8;    %Size of transformation block
for i=1:N:r
    for j=1:N:c
        f = x(i:i+N-1,j:j+N-1);
        df = dct2(f);
        DF(i:i+N-1,j:j+N-1) = df;   %dct to blocks
        dff = idct2(df);
        DFF(i:i+N-1,j:j+N-1) = dff; %inverse dct to blocks
        df(N:-1:depth+1,:) = 0;
        df(:,N:-1:depth+1) = 0;
        IDF(i:i+N-1,j:j+N-1) = df;%dct of blocks with depth considered
        dff = idct2(df);
        IDFF(i:i+N-1,j:j+N-1) = dff;%idct of blocks with depth
    end
end
A = DFF/255;    imwrite(A,'Image1.jpg');
B = IDFF/255;   imwrite(B,'Image2.jpg');
figure;
subplot(2,2,1),imshow(DF),title('Transformed image');
subplot(2,2,2),imshow(DFF/255),title('Inverse image');
subplot(2,2,3),imshow(A),title('Compress dct');
subplot(2,2,4),imshow(B),title('Compress idct');

