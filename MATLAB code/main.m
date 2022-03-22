clear;
close all;
clc;% fractional order
format long
h=1/100;% space stepsize
x=0:h:1;
n=size(x,2);
nodes1=1:n-1;
nodes2=2:n;
for i=1:n-1;
 nodes(i,1)=nodes1(i);
 nodes(i,2)=nodes2(i);
end
T=1;
k=1/500; % time stepsize
NT=T/k;
%U00=ones(size(x'))*0; %initial value
U00=0*sin(2*pi*x)'; %initial value
t=(1:1:NT)'*k;
exact=(t.^2)*sin(2*pi*x); % exact solution
%exact=(exp(-t))*sin(2*pi*x); % exact solution
exact=exact';
exact=[U00 exact];
UU=U00;
M=zeros(n,n); S=zeros(n,n);

 for e1=1:n-1
[dA,dB] = elementmatrix(x,nodes,e1);
 nn=nodes(e1,:);
 M(nn,nn)=M(nn,nn)+dA;
 S(nn,nn)=S(nn,nn)+dB;
end
tic
for j=1:NT
 U=zeros(n,1);  b=zeros(n,1);
for e1=1:n-1
 [db]=elementcontributions(t(j),x,nodes,e1);
 nn=nodes(e1,:);
 b(nn)=b(nn)+db;
end
 R2=M*(UU(:,j));
 b=k*b+R2;
 innodes=2:n-1; A1=M(innodes,innodes)+k*S(innodes,innodes);
 b1=b(innodes);
 U1=A1\b1;
 U(innodes)=U1;
 UU=[UU U];
end

figure(1)
subplot(1,2,1)
mesh(exact)
xlabel('t');ylabel('x');
title('The exact solution u(t, x) at t=1 for \alpha =0.1')
subplot(1,2,2)
mesh(UU)
xlabel('t');ylabel('x');
title('The approximate solution U^{N} at t_{N}=1 for \alpha =0.1')
error=UU-exact;
figure(2)
mesh(error)
xlabel('t');ylabel('x');
title('The error at t=1 for \alpha =0.1')
toc