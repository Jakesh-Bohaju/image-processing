% Program to plot sine wave
%Author:Jakesh
%_______________________________________________________________
%Three variables
%_______________________________________________________________
close all;
clear variables;
clc;
%_______________________________________________________________
%Using sine function plot the graph
%_______________________________________________________________
x=0:0.001:16;
y=inline('sin(x)');
z=y(x);
plot(x,z);
xlabel('x')
ylabel('y=f(x)')
title('Sine Wave...');
