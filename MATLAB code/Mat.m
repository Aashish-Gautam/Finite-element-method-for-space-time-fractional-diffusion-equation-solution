function g = Mat(nn)
    function f = Matrix(nn,i)
    f = C(nn,i,q,b) + DD(nn,i,x,phi,si,q) + EE(x,t,i,func,phi)
    end
M=zeros(1,m)
for i=1:m
    M(i) = M(i) + Matrix(nn,i)
end
g = M
end