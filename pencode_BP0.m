function x=pencode_BP0(u)

global PCparams0;

n = PCparams0.n;
F = [1 0;1 1];
B=1;
for ii=1:n
    B = kron(B,F);
end
F_kron_n = B;

xx = PCparams0.FZlookup;
xx (xx == -1) = u;
% xx = xx(PCparams.bitreversedindices+1);
x = mod(xx*F_kron_n,2);
end