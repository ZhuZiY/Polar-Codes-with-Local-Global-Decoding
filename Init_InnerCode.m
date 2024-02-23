function [semichannel,goodchannel] = Init_InnerCode(N,semi_len,good_len,method,design_parameter)

if (method == 1)
    indices = construct_polar_code_GA(N,design_parameter);
elseif (method == 2)
    indices = construct_polar_code_Ba(N,0);
end

semichannel = zeros(1,N);
goodchannel = zeros(1,N);

for i = 1:1:good_len
    goodchannel(indices(i)) = -1;
end

for i = good_len+1:1:good_len+semi_len
    semichannel(indices(i)) = -1;
end