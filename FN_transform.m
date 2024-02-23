function x=FN_transform(d)
%
% Simple F^{x n} or n-fold-Kronecker product of F, multiplying
% the vector "d":   x = F^{x n} * d
%

N= length(d);
n=log2(N);

if(nextpow2(N) ~= n)
    fprintf('\nError: FN_transform(d) -- size of the input vector %d is not a power-of-2',N);
    fprintf('\n Exiting the routine immediately.');
else
    
    for i=1:n
        B = 2^(n-i+1);
        nB = 2^(i-1);
        for j=1:nB
            base = (j-1)*B;
            for l=1:B/2
                d(base+l) = mod( d(base+l)+d(base+B/2+l), 2 );
            end
        end
    end
end

x=d;
end