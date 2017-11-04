%To study image acquisition and coin detection using image labeling
%Developed By Jakesh Bohaju
%Date 11 July 2017
%___________________________________________________________________
%Three critcal statement
%___________________________________________________________________
close all;
clear variables;
clc;
%___________________________________________________________________
%Read image
%___________________________________________________________________
A = imread('coins.jpg');
B = im2bw(A);
C = imfill(B,'holes');
label = bwlabel(C);
max(max(label));
im1 = (label==2);
figure;subplot(2,2,1),imshow(A),title('Original image');
subplot(2,2,2),imshow(B),title('Black and White image');
subplot(2,2,3),imshow(C),title('Filled image');
subplot(2,2,4),imshow(im1),title('Labelled image');
figure;hold on;
for j=1:max(max(label))
    [row, col] = find(label==j);
    len = max(row)-min(row)+2;
    breadth = max(col)-min(col)+2;
    target = uint8(zeros([len breadth]));
    sy = min(col)-1;    sx = min(row)-1;
    for i=1:size(row,1)
        x = row(i,1)-sx;        y = col(i,1)-sy;
        target(x,y) = A(row(i,1),col(i,1));
    end
    mytitle = strcat('Object Number : ',num2str(j));    
    subplot(2,3,j), imshow(target),title(mytitle);  
end
  hold off;