function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary

    z = base10;
    y=1; %% creates the initial column
if z == 0
        base2 = 0 
else
    while z >=1 
        if rem(z,2)== 1   %% If number is odd add a 1 to matrix, subtract 1, then divide by 2
            z = (z-1)/2;
            base2(1, y) = 1;
        elseif rem(z,2) == 0  %% If number is even add a 0 to the matrix and divide by 1
            z=z/2;
            base2(1, y) = 0;
        end
      y=y+1;
    end
    base2 = fliplr(base2); %% inverts the matrix 
end