function a = g2(r,s,q)
    function [be] = b(r,q)
    be = -((r - 2).^(2-q) + 3*((r-1).^(2-q)) - 3*(r.^(2-q)) + (r +1).^(2-q));
    end
if(s<=r-1)
    a = b(r-s+1,q)
end
if(s==r-1)
    a = 2.^(2-q) - 3
end
if(s==r+1)
    a = 1
end
if(s>=r+2)
    a=0
end
end