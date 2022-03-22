function [y ] = right( t,x )
 y=2*t*sin(2*pi*x)-fun(t,x);
%y=-exp(-t)*sin(2*pi*x)-fun(t,x);
end
