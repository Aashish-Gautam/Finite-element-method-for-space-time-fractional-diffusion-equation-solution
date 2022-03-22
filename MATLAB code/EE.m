function g = EE(x,t,i,func,phi)
    function f = e(x,t,i,func,phi)
    f = p*(func(x,t)*phi(i,x))
    end

E = zeros(m,1)
for i=1:m
    E(i,1)=E(i,1) + e(x,t,i,func,phi)
end
g = E
end