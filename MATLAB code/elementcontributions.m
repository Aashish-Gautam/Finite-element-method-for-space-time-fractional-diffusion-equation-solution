function [db] = elementcontributions( t,x,nodes,e1)
%ELEMENTCONTRIBUTION Summary of this function goes here
% Detailed explanation goes here
n1=nodes(e1,1);
n2=nodes(e1,2);
x1=x(n1);
x2=x(n2);
length=x2-x1;
f=[(length/2)*right(t,(x1/2+x2/2));(length/2)*right(t,(x1/2+x2/2))];
db=f;
end
