function indices = construct_polar_code_GA(N,design_sigma2)
    n = log2(N);
    density = zeros(n+1,N);
    density(end,:) = 2/design_sigma2;
    % Right-to-Left
    for L = n:(-1):1 % the layer index
        NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
        NumOfBit = 2^L; % number of bits in each phase
        D = 2^(L-1); % distance between two bits associated with XOR
        for i = 1:NumOfPhase
            for j = 1:D
                I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                density(L,I) = fFunction_density(density(L+1,I),density(L+1,I+D));
                density(L,I+D) = density(L+1,I) + density(L+1,I+D);
            end
        end
    end
    [~,indices] = sort(density(1,:),'descend');
end