%Title : To study image enhancement with contrast streching,
%histogram equalization and specification
%Developed By : Jakesh Bohaju
%Date : 20 June, 2017
%___________________________________________________________________
%Three critical statements
%___________________________________________________________________
close all;
clear variables;
clc;
%___________________________________________________________________
%Read Image
%___________________________________________________________________
i = imread('X:\LaTex\Lab Report\Lab-05\images\l5image5.jpg');
ii = rgb2gray(i);
figure;
subplot(3,2,1);
imshow(ii);
title('Original Image');
subplot(3,2,2);
imhist(ii);
imh = imadjust(ii,[0.3,0.6],[0.0,1.0]);%contrast streching
subplot(3,2,3);
imshow(imh);
title('Contrast Streching');
subplot(3,2,4);
imhist(imh);
imh1 = histeq(ii);%histogram equalization
subplot(3,2,5);
imshow(imh1);
title('Histogram equalization');
subplot(3,2,6);
imhist(imh1);
%___________________________________________________________________
%Specification
%___________________________________________________________________
img1 = imread('X:\LaTex\Lab Report\Lab-05\images\l5image1.jpg');
ref_img1 = imread('X:\LaTex\Lab Report\Lab-05\images\l5image3.jpg');
%___________________________________________________________________
%source image channel decomposition
%___________________________________________________________________
imgr1 = img1(:,:,1);
imgg1 = img1(:,:,2);
imgb1 = img1(:,:,3);
%___________________________________________________________________
%specific image channel decoposition
%___________________________________________________________________
imgr2 = ref_img1(:,:,1);
imgg2 = ref_img1(:,:,2);
imgb2 = ref_img1(:,:,3);
%___________________________________________________________________
%histogram of rgb channel for source image
%___________________________________________________________________
himgr1 = imhist(imgr1);
himgg1 = imhist(imgg1);
himgb1 = imhist(imgb1);
%___________________________________________________________________
%histogram of rgb channel for destination image
%___________________________________________________________________
himgr2 = imhist(imgr2);
himgg2 = imhist(imgg2);
himgb2 = imhist(imgb2);
%___________________________________________________________________
%histogram equalization of rgb channel for destination
%___________________________________________________________________
result_r = histeq(imgr1,himgr2);
result_g = histeq(imgg1,himgg2);
result_b = histeq(imgb1,himgb2);
%___________________________________________________________________
%histogram specification
%___________________________________________________________________
histsp(:,:,1) = result_r;
histsp(:,:,2) = result_g;
histsp(:,:,3) = result_b;
%___________________________________________________________________
%display output of specification
%___________________________________________________________________
figure;
subplot(1,3,1);
imshow(img1);
title('Source Image');
subplot(1,3,2);
imshow(ref_img1);
title('Reference Image');
subplot(1,3,3);
imshow(histsp);
title('Specified Image');
%___________________________________________________________________
%display output of specification
%___________________________________________________________________
figure;
subplot(3,3,1);
imhist(imgr1);
title('Red Input');
subplot(3,3,2);
imhist(imgg1);
title('Green Input');
subplot(3,3,3);
imhist(imgb1);
title('Blue Input');
subplot(3,3,4);
imhist(imgr2);
title('Red Reference Input');
subplot(3,3,5);
imhist(imgg2);
title('Green Reference Input');
subplot(3,3,6);
imhist(imgb2);
title('Blue Reference Input');
subplot(3,3,7);
imhist(result_r);
title('Red Output');
subplot(3,3,8);
imhist(result_g);
title('Green Output');
subplot(3,3,9);
imhist(result_b);
title('Blue Output');