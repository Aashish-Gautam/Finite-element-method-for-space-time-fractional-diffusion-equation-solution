function p = phi(i,y)
if y<=x(i-1) && y>=x(i-2)
    p = (y-x(i-2))/h
if y>=x(i-1) && y<=x(i)
    p = (x(i)- y)/h
else 
    p = 0
end
end