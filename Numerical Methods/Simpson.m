function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

a = size(x);
b = size(y);
n = (a(2));
yn = (b(2));
I=0;
T=0;
if n ~= yn
    error('x and y values must be the same length')
end


if n==2 
   warning('Since only two data points used, trapezoidal rule was applied')  % using only the trapezoidal method for n<2
   I = (x(n)-x(1))*((y(1)+y(n))/2)
elseif n>2 
    
    

    if rem(n,2) == 0
num = (x(n-2) - x(1))/(n-3);

for i = 1:n-2
    
    if x(i) == x(1) || x(i) == x(n-2)
    S = y(i);
    elseif rem(i,2) == 0
    S = 4*y(i);
    elseif rem(i,2) ~= 0
    S = 2*y(i);
    end

T = T + S ;
Z = T* (num/3);
end
J = (x(n)-x(n-1))*((y(n)+y(n-1))/2);
warning('Since an even amount of data points used, trapezoidal rule was applied at the end')
I = J+Z;
   
        
    else
        num = (x(end) - x(1))/(n-1);

        for i = 1:n
    if x(i) == x(1) || x(i) == x(n)
    S = y(i);
    elseif rem(i,2) == 0
    S = 4*y(i);
    elseif rem(i,2) ~= 0
    S = 2*y(i);
    end


    
    
    
    
T = T + S ;
I = T* (num/3);
        end
    end
end
end