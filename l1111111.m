% Program to check greater or smaller no
%Author:Jakesh
%_______________________________________________________________
%Three variables
%_______________________________________________________________
close all;
clear variables;
clc;
%_______________________________________________________________
%User input here
%_______________________________________________________________
x=input('Enter first number i.e. x =')
y=input('Enter second number i.e. y =')
%_______________________________________________________________
%Implementing if statement
%_______________________________________________________________
if x>y
        disp('X is greater than Y.');
elseif x<y
        disp('X is smaller than Y.');
else
    disp('X is equal to Y.');
end
