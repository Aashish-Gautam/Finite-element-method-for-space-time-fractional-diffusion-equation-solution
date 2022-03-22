function [dA,dB]=elementmatrix(x,nodes,e1)
%ELEMENTCONTRIBUTION Summary of this function goes here
% Detailed explanation goes here
n1=nodes(e1,1);
n2=nodes(e1,2);
x1=x(n1);
x2=x(n2);
length=x2-x1;
localmass=[1/3*length 1/6*length; 1/6*length 1/3*length];
localstiffness=[1/length -1/length; -1/length 1/length];
dA=localmass;
dB=localstiffness;
end
