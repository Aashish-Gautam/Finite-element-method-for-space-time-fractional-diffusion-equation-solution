function [outputArg] = r(inputArg)
R=[cos(pi*75/180),-1*sin(pi*75/180),0;sin(pi*75/180),cos(pi*75/180),0;0,0,1];
outputArg=R*inputArg;
end