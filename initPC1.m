function initPC1(N,K,method,design_parameter) 

global PCparams1;

n = log2(N); 
N = 2^n;

PCparams1 = struct('N', N, ...
                  'K', K, ...
                  'n', n, ...
                  'FZlookup', zeros(1,N), ...
                  'L', zeros(N,n+1), ...
                  'B', zeros(N,n+1),...
                  'bitreversedindices',zeros(N,1),...
				  'crc_size',0);
				  
for index = 1 : N
	PCparams1.bitreversedindices(index) = bin2dec(wrev(dec2bin(index-1,n)));
end

if (method == 1)
    indices = construct_polar_code_GA(N,design_parameter);
elseif (method == 2)
    indices = construct_polar_code_Ba(N,0);
end

position = zeros(1,N);
for i = 1:1:K
    position(indices(i)) = 1;
end
        
PCparams1.FZlookup = -position;  

end
