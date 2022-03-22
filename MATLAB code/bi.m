function [be] = b(r,q)
be = -((r - 2).^(2-q) + 3*((r-1).^(2-q)) - 3*(r.^(2-q)) + (r +1).^(2-q));
end