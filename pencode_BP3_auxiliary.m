function x=pencode_BP3_auxiliary(u_semi,u_good,semichannel,goodchannel)
global PCparams3;
n = PCparams3.n; 
F = [1 0;1 1];
B=1;
for ii=1:n
    B = kron(B,F);
end
F_kron_n = B;

xx = zeros(1,PCparams3.N);
xx(semichannel == -1) = u_semi;
xx(goodchannel == -1) = u_good;

x = mod(xx*F_kron_n,2);
end