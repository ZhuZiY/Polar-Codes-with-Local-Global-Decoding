function initPC3(N,K) 

global PCparams3;

n = log2(N); 
N = 2^n;

PCparams3 = struct('N', N, ...
                  'K', K, ...
                  'n', n, ...
                  'FZlookup', zeros(1,N), ...
                  'L', zeros(N,n+1), ...
                  'B', zeros(N,n+1),...
                  'bitreversedindices',zeros(N,1),...
				  'crc_size',0);
				  
for index = 1 : N
	PCparams3.bitreversedindices(index) = bin2dec(wrev(dec2bin(index-1,n)));
end

indices = construct_polar_code_Ba(N,0);
position = zeros(1,N);
for i = 1:1:K
    position(indices(i)) = 1;
end
        
PCparams3.FZlookup = -position;  

end
