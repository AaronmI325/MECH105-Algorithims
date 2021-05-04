function [A] = specialMatrix(n,m)
% This function should return a matrix A
% Inputs n is the number of rows, and m the number of columns
% First create the matrxix A of the correct size, filling it with zeros to start with 
A = zeros(n,m);


if nargin ~= 2 
    error('You cant make a matrix with more or less than 2 variables')
end
for R = 1:n 
    for C = 1:m
        if R == 1 
            A(R,C) = C; % Codes first row to be 1 2 3 5 ... m
        end
        if C == 1 
            A(R,C) = R; % Codes First column to be 1 2 3 4 ... n 
        end
        if R ~= 1 && C ~= 1
            A(R,C) = (A(R-1, C) + A(R,C-1)); % Adds Codes every other element to be the sum of the top element and the element to the left
        end
    end

    

end