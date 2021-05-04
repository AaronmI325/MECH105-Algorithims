function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[r,c] = size(A)
if  r ~= c 
    error('must be a square matrix')
end

[r,c] = size(A)

L= eye(r)     
P = L     % setting up L and P 
U = A     % setting up U variable 
for i = 1:r 
    [a t] = max(abs(U(i:r,i)))  %need to make pivot matrix, "a" doesn't matter 
    t = t+i-1
    if i ~= t           %switching rows in U, dummy keeps row i in a variable and allows for switching
        dummy = U(i,:)
        U(i,:) = U(t,:)
        U(t,:) = dummy
        dummy2 = P(i,:)     %switching rows in P
        P(i,:) = P(t,:)
        P(t,:) = dummy2
     if i >= 2            % switching rows in L matrix, not necesary if it's a 2x2 matrix
        dummy3 = L(i,1:i-1)
        L(i,1:i-1) = L(t,1:i-1)
        L(t,1:i-1) = dummy3
     end
    end
    for l = i+1:r
        L(l,i) = U(l,i)/U(i,i)         % calculating U and L Matricies
        U(l,:) = U(l,:) - (L(l,i)*U(i,:))
    end
    
end





end