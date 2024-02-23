rng(1)
%% Initial parameter setting

% design method: 1 = Gaussian Approximation, 2 = Bhattacharyya parameter
construction_method = 1;

global PCparams0;
N0 = 256;
K0 = N0/2;

global PCparams1;
N1 = 1024;
K1 = N1/2 - K0/2 + N0/2;  

global PCparams2;
N2 = N1;
K2 = K1;  

len_Ka = K0/2;
len_Kb = N1/2 - K0/2; 
Max = 100;
Rate = (len_Ka+len_Kb)/N1;

EbN0_list = 2:0.2:3.2;
EbN0_num = 10.^(EbN0_list/10);
N_0 = 1./(EbN0_num*Rate);
BER = zeros(1,length(EbN0_list));
FER = zeros(1,length(EbN0_list));
min_frame_errors = 50;
min_frame_num = 1e3; 
max_frame_num = 1e6;
NumberOfParts = 2;

design_EbN0 = 3.2;
design_EbN0_num = 10.^(design_EbN0/10);
design_N_0 = 1./(design_EbN0_num*Rate);
design_sigma2 = design_N_0/2;
[semichannel,goodchannel] = Init_InnerCode(N1,N0/2,len_Kb,construction_method,design_sigma2);
initPC1(N1,K1,construction_method,design_sigma2);
initPC2(N2,K2,construction_method,design_sigma2);

% initPC(N0,K0,construction_method,design_sigma2);
initPC_DDE_Localglobal_RealDist(N0,K0,semichannel,1:1:N0/2,design_sigma2);

% DDE
% PCparams0.FZlookup = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	1	0	1	0	1	0	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1];

% 4 swap [82,83,97,113]
% PCparams0.FZlookup = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	-1	0	0	0	0	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1];

% 4 swap [82,83,97,98]
% PCparams0.FZlookup = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	-1	0	0	0	0	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1];

%% Body of the code
for BER_count = 1:length(EbN0_list)
	tt=tic();
	fprintf('\n Now running: %f  [%d of %d] \n\t Frame Counts: %53d',EbN0_list(BER_count),BER_count,length(EbN0_list),0);
    BE_temp = zeros(1,max_frame_num);
    FE_temp = 0;

    % [semichannel,goodchannel] = Init_InnerCode(N1,N0/2,len_Kb,construction_method,N_0(BER_count)/2);
    % initPC(N0,K0,construction_method,N_0(BER_count)/2);
    % initPC1(N1,K1,construction_method,N_0(BER_count)/2);
    % initPC2(N2,K2,construction_method,N_0(BER_count)/2);
    % initPC_DDE_Localglobal_RealDist(N0,K0,semichannel,1:1:N0/2,N_0(BER_count)/2);

    % % 1024-576, Inner 9 swap, Outer 4 swap
    % PCparams0.FZlookup = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1];
    % PCparams1.FZlookup = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	-1	-1	-1	-1	-1	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	-1	0	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1];
    % PCparams2.FZlookup = PCparams1.FZlookup;
    % semichannel = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	0	0	0	-1	-1	-1	-1	-1	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	-1	-1	-1	-1	-1	0	0	0	0	0	0	-1	-1	-1	0	-1	-1	0	-1	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	-1	0	-1	-1	0	0	-1	-1	0	-1	0	0	0	0	0	0	-1	0	-1	-1	0	-1	-1	-1	0	-1	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	-1	-1	0	-1	-1	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	0	0	0	0	-1	0	-1	-1	0	-1	-1	-1	0	-1	0	0	0	0	0	0	-1	0	-1	-1	0	-1	-1	-1	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	0	0	0	0	-1	-1	-1	-1	0	-1	0	0	0	0	0	0	0	0	0	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	-1	-1	-1	-1	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
    % goodchannel = PCparams1.FZlookup - semichannel;

    % Each frame
    for f = 1:1:max_frame_num
        % perm1 = randperm(N0/2);
        % perm2 = randperm(N0/2);
        perm1 = 1:1:N0/2;
        perm2 = perm1;
        Left_LLR0 = zeros(PCparams0.n+1,PCparams0.N);
        Right_LLR0 = zeros(PCparams0.n+1,PCparams0.N);
        Right_LLR0(1,PCparams0.FZlookup == 0) = 1e10;
        Left_LLR1 = zeros(PCparams1.n+1,PCparams1.N);
        Right_LLR1 = zeros(PCparams1.n+1,PCparams1.N);
        Right_LLR1(1,PCparams1.FZlookup == 0) = 1e10;
        Left_LLR2 = zeros(PCparams2.n+1,PCparams2.N);
        Right_LLR2 = zeros(PCparams2.n+1,PCparams2.N);
        Right_LLR2(1,PCparams2.FZlookup == 0) = 1e10; 
        %% Encoder
        % Generate information sequence into 2 parts K1,K2
        Ka1=randi([0 1],1,len_Ka);
        Ka2=randi([0 1],1,len_Ka);
        Kb1=randi([0 1],1,len_Kb);
        Kb2=randi([0 1],1,len_Kb);
        % Encode K1 in traditional encoder
        Ka = [Ka1,Ka2];
        s = zeros(1,N0);
        s(PCparams0.FZlookup == -1) = Ka;
        x0 = systematic_pencode0(s).';
        Pa = x0(PCparams0.FZlookup == 0);
        MessageSendForward1 = [Pa(1:end/2),Ka(1:end/2)];
        MessageSendForward2 = [Pa(end/2 + 1:end),Ka(end/2 + 1:end)];
        % Interleave
        pi_MSF1 = interleaver(MessageSendForward1,perm1);
        pi_MSF2 = interleaver(MessageSendForward2,perm2);
        % Encode [X1,K2] in traditional encoder
        x1 = pencode_BP1_auxiliary(pi_MSF1,Kb1,semichannel,goodchannel);
        x2 = pencode_BP2_auxiliary(pi_MSF2,Kb2,semichannel,goodchannel);
        x_total = [x1,x2];
        %% Channel Noise
        % Add Gaussian White Noise 
        y = (2*x_total-1) + randn(size(x_total)).*sqrt(N_0(BER_count)/2);
        %% Decoder
        % Decode X1,X2 seperately in G1 and G2
        initial_llr_total = LLR(y,N_0(BER_count)/2);
        initial_info_total = [Ka1 Kb1 Ka2 Kb2];
        initial_llr1 = initial_llr_total(1:N1);
        initial_llr2 = initial_llr_total(N1+1:end);

        Left_LLR1(end,:) = initial_llr1;
        Left_LLR2(end,:) = initial_llr2;

        early_stop = 0;

        for loop = 1:1:Max
            % Left-to-Right
            n = PCparams1.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR1(L+1,I) = fFunction(Right_LLR1(L,I),Right_LLR1(L,I+D) + Left_LLR1(L+1,I+D));
                        Right_LLR1(L+1,I+D) = fFunction(Left_LLR1(L+1,I), Right_LLR1(L,I)) + Right_LLR1(L,I+D);              
                    end
                end
            end
            % Right-to-Left
            for L = n:(-1):1 % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:D
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Left_LLR1(L,I) = fFunction(Left_LLR1(L+1,I),Right_LLR1(L,I+D) + Left_LLR1(L+1,I+D));
                        Left_LLR1(L,I+D) = fFunction(Left_LLR1(L+1,I), Right_LLR1(L,I)) + Left_LLR1(L+1,I+D);
                    end
                end
            end

            % early_stop1
            x_hat1 = (Right_LLR1(n+1,:) + Left_LLR1(n+1,:)) < 0;
            d_hat1 = (Right_LLR1(1,:) + Left_LLR1(1,:)) < 0;
            x_enc1 = FN_transform(d_hat1);
            if all(x_hat1 == x_enc1)
                early_stop1 = 1;
            else
                early_stop1 = 0;
            end

            L_l1 = Left_LLR1(1,:);

            % pick out L-messages to send back
            llr_back1=L_l1(semichannel == -1);
            % uninterleave
            llr_back1=uninterleaver(llr_back1,perm1);

            % Left-to-Right
            n = PCparams2.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR2(L+1,I) = fFunction(Right_LLR2(L,I),Right_LLR2(L,I+D) + Left_LLR2(L+1,I+D));
                        Right_LLR2(L+1,I+D) = fFunction(Left_LLR2(L+1,I), Right_LLR2(L,I)) + Right_LLR2(L,I+D);              
                    end
                end
            end
            % Right-to-Left
            for L = n:(-1):1 % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:D
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Left_LLR2(L,I) = fFunction(Left_LLR2(L+1,I),Right_LLR2(L,I+D) + Left_LLR2(L+1,I+D));
                        Left_LLR2(L,I+D) = fFunction(Left_LLR2(L+1,I), Right_LLR2(L,I)) + Left_LLR2(L+1,I+D);
                    end
                end
            end

            % early_stop2
            x_hat2 = (Right_LLR2(n+1,:) + Left_LLR2(n+1,:)) < 0;
            d_hat2 = (Right_LLR2(1,:) + Left_LLR2(1,:)) < 0;
            x_enc2 = FN_transform(d_hat2);
            if all(x_hat2 == x_enc2)
                early_stop2 = 1;
            else
                early_stop2 = 0;
            end

            L_l2 = Left_LLR2(1,:);

            % pick out L-messages to send back
            llr_back2=L_l2(semichannel == -1);
            % uninterleave
            llr_back2=uninterleaver(llr_back2,perm2);

            llr_back_Pa = [llr_back1(1:length(Pa)/2),llr_back2(1:length(Pa)/2)];
            llr_back_Ka = [llr_back1(length(Pa)/2 + 1:end),llr_back2(length(Pa)/2 + 1:end)];

            % send L-message-inner backward 
            temp = Left_LLR0(end,:);
            temp(PCparams0.FZlookup == 0) = llr_back_Pa;
            temp(PCparams0.FZlookup == -1) = llr_back_Ka;
            Left_LLR0(end,:) = temp;

            % Round-trip scheduling
            % Right-to-Left
            n = PCparams0.n;
            for L = n:(-1):1 % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:D
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Left_LLR0(L,I) = fFunction(Left_LLR0(L+1,I),Right_LLR0(L,I+D) + Left_LLR0(L+1,I+D));
                        Left_LLR0(L,I+D) = fFunction(Left_LLR0(L+1,I), Right_LLR0(L,I)) + Left_LLR0(L+1,I+D);
                    end
                end
            end
            % Left-to-Right
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR0(L+1,I) = fFunction(Right_LLR0(L,I),Right_LLR0(L,I+D) + Left_LLR0(L+1,I+D));
                        Right_LLR0(L+1,I+D) = fFunction(Left_LLR0(L+1,I), Right_LLR0(L,I)) + Right_LLR0(L,I+D);              
                    end
                end
            end

            % early_stop0
            x_hat0 = (Right_LLR0(n+1,:) + Left_LLR0(n+1,:)) < 0;
            d_hat0 = (Right_LLR0(1,:) + Left_LLR0(1,:)) < 0;
            x_enc0 = FN_transform(d_hat0);
            if all(x_hat0 == x_enc0)
                early_stop0 = 1;
            else
                early_stop0 = 0;
            end

            R_r0 = Right_LLR0(end,:);

            % interleave
            Pa_llr = R_r0(PCparams0.FZlookup == 0);
            Ka_llr = R_r0(PCparams0.FZlookup == -1);
            llr_forward1 = [Pa_llr(1:end/2),Ka_llr(1:end/2)];
            llr_forward2 = [Pa_llr(end/2 + 1:end),Ka_llr(end/2 + 1:end)];

            pi_llr1 = interleaver(llr_forward1,perm1);
            pi_llr2 = interleaver(llr_forward2,perm2);

            % send R-message-outer forward 
            temp = Right_LLR1(1,:);
            temp(semichannel == -1) = pi_llr1;
            Right_LLR1(1,:)=temp;
            % send R-message-outer forward 
            temp = Right_LLR2(1,:);
            temp(semichannel == -1) = pi_llr2;
            Right_LLR2(1,:)=temp;

            if(early_stop0 == 1 && early_stop1 == 1 && early_stop2 == 1)
                break
            end
        end

        u_llr0 = Right_LLR0(1,:) + Left_LLR0(1,:);
        u_llr1 = Right_LLR1(1,:) + Left_LLR1(1,:);
        u_llr2 = Right_LLR2(1,:) + Left_LLR2(1,:);

        N0_hat = zeros(1,N0);
        N0_hat(u_llr0<0) = 1;
        N0_hat = FN_transform(N0_hat);
        K0_hat = N0_hat(PCparams0.FZlookup == -1);

        u_llr1 = u_llr1(goodchannel == -1);
        K1_hat = zeros(1,len_Kb);
        K1_hat(u_llr1<0) = 1;

        u_llr2 = u_llr2(goodchannel == -1);
        K2_hat = zeros(1,len_Kb);
        K2_hat(u_llr2<0) = 1;

        info_hat = [K0_hat(1:K0/2),K1_hat,K0_hat(K0/2+1:end),K2_hat];

        BE_temp(f) = sum(xor(info_hat,initial_info_total));

        if(BE_temp(f) ~= 0)
            FE_temp = FE_temp + 1;
        end

        if mod(f,20)==0
            for iiiii=1:53
                fprintf('\b');
            end
            fprintf(' %7d   ---- %7d FEs, %7d BEs found so far',f,FE_temp,sum(BE_temp));
        end
        if f>=min_frame_num && FE_temp>=min_frame_errors 
            break;
        end
    end
    fprintf('\n\t Total time taken: %.2f sec (%d samples) \n',toc(tt),f);
    BER(BER_count) = sum(BE_temp)/(f*length(initial_info_total));
    FER(BER_count) = FE_temp/f;
end
