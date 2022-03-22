function g = DD(nn,i,x,phi,si,q)
    function f = d(nn,i,x,phi,psi,q)
    z = b(nn-1,q)*psi(x)*phi(i,x)
    end
D = zeros(m,1)
for i=1:m
    D(i,1)=D(i,1) + d(nn,i,x,phi,si,q)
end
g = D
end