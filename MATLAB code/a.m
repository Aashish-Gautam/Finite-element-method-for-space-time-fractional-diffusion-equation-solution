function [outputArg] = a(inputArg)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
S=[2,0,0;0,3,0;0,0,1];
T=[1,0,6;0,1,7;0,0,1];
R=[cos(pi*75/180),-1*sin(pi*75/180),0;sin(pi*75/180),cos(pi*75/180),0;0,0,1]
c=R*T*S*inputArg;
d=c(1,:);
e=c(2,:);
outputArg=c;
end






