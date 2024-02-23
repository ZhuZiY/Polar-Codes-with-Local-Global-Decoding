function x = uninterleaver(y,perm)
% x = y(perm);

x = zeros(1,length(y));
x(perm) = y; 

