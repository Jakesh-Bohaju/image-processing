% Basic MATLAB program
%Author:Jakesh
%_______________________________________________________________
%Three variables
%_______________________________________________________________
close all;
clear variables;
clc;
%_______________________________________________________________
%Print Hello MATLAB
%_______________________________________________________________
disp('Hello MATLAB!!!');
%_______________________________________________________________
%Print matrix
%_______________________________________________________________
a=[1 2 3 4 5];
b=[1 2 3 4 5;6 7 8 9 0;1 5 9 3 7];
disp('1X5 Matrix');
disp(a);
disp('3X5 Matrix');
disp(b);
%_______________________________________________________________
%Display matrix values
%_______________________________________________________________
disp('Display index 2 value from matrix a');
disp(a(2));
disp('Display third row and second column value from matrix b');
disp(b(3,2));
disp('Display all row and first column values from matrix b');
disp(b(:,1));