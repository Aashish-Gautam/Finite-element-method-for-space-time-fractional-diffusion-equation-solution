function g = C(nn,i,q,f,b)
    function [f] = cc(nn,i,q)
        function [be] = b(r,q)
        be = -((r - 2).^(2-q) + 3*((r-1).^(2-q)) - 3*(r.^(2-q)) + (r +1).^(2-q));
        end
    global U
    z = 0
    for k=1:nn-1
        z = z + (b(k,q)-b(k-1,q))*(U(nn-k,i) + 4*U(nn-k,i+1) + U(nn-k,i+2));
    end
    f = z
    end
C0 = zeros(m,1)
for i=1:m
    C0(i,1)=C0(i,1) + cc(nn,i,q)
end
C = (h/6)*C0
end