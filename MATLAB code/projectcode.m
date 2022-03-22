clear;
close all;
clc; %fractional order
format long
h=1/100;% space stepsize
x=0:h:1;
global m 
m=size(x,2);
% nodes1=1:m-1;
% nodes2=2:m;
% for i=1:m-1
%  nodes(i,1)=nodes1(i);
%  nodes(i,2)=nodes2(i);
% end
T=1;
k=1/500; % time stepsize
t = 0:k:1
global n
n = size(t,2);
% noddes1=1:n-1
% noddes2=2:n;
% for j=1:n-1
%     noddes(i,1)=noddes1(i);
%     noddes(i,2)=noddes2(i);
% end

global U;
U = zeros(n,m); %creating a matrix
for i=1:m
    U(1,i) = U(1,i) + si((i-1)*h)
end
for j=1:n
    U(j,m) = U(j,m) + phi((j-1)*k)
end

% creating first matrix of equation
A = ones(1,m-2)
B0 = diag(A)
A1 = [B0 zeros(m-2,1)]
A2 = 4*[zeros(m-2,1) B0 zeros(m-2,1)]
A3 = [zeros(m-2,2) B0]
AA = h/6*(A1 + A2 + A3)

%creating second matrix of equation
B = zeros(m-2,m)
for x=1:m-2
    for y=1:m
        B(x,y)=B(x,y) + g1(x,y)-g2(x,y)
    end
end
p = gamma(2-q2)*(k.^q2)
l = (h.^(1-q))/gamma(3-q)
r1 = (l*c*p)/h
%q2 = gamma of the equation
BB = r1*B

% Adding the first two matrices
M0 = AA + BB
M1 = inv(M0)

for j = 2:n
    for k=2:m-1
        U(j,k) = U(j,k) + finalmatrix()
    end
end