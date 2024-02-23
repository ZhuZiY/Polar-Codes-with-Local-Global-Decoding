rng(1)
%% Initial parameter setting

EbN0_list = 3:0.2:3;
BER = zeros(1,length(EbN0_list));
FER = zeros(1,length(EbN0_list));
min_frame_errors = 100;
min_frame_num = 1e3; 
max_frame_num = 1e6;
NumberOfParts = 4;

% BA
construct_method = 2;

global PCparams0;
N0 = 512;
K0 = N0/2;  
initPC(N0,K0,construct_method,0);
sub_len = N0/NumberOfParts;

global PCparams1;
N1 = 1024;
K1 = N1/2 - K0/NumberOfParts + N0/NumberOfParts;  
initPC1(N1,K1,construct_method,0);

global PCparams2;
N2 = 1024;
K2 = K1;  
initPC2(N2,K2,construct_method,0);

global PCparams3;
N3 = 1024;
K3 = K1;  
initPC3(N3,K3);

global PCparams4;
N4 = 1024;
K4 = K1;  
initPC4(N4,K4);

len_Ka = K0/NumberOfParts;
len_Kb = N1/2 - len_Ka; 
Max = 200;
Rate = (len_Ka+len_Kb)/N1;

[semichannel,goodchannel] = Init_InnerCode(N1,sub_len,len_Kb,construct_method,0);

% 1024-576, Inner 9 swap, Outer 14 swap
PCparams0.FZlookup = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	-1	0	-1	0	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1];
% PCparams1.FZlookup = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	-1	-1	-1	-1	-1	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	-1	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	-1	0	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1];
% PCparams2.FZlookup = PCparams1.FZlookup;
% PCparams3.FZlookup = PCparams1.FZlookup;
% PCparams4.FZlookup = PCparams1.FZlookup;

% semichannel = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	0	0	0	-1	-1	-1	-1	-1	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	-1	-1	-1	-1	-1	0	0	0	0	0	0	-1	-1	-1	0	-1	-1	0	-1	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	-1	0	-1	-1	0	0	-1	-1	0	-1	0	0	0	0	0	0	-1	0	-1	-1	0	-1	-1	-1	0	-1	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	-1	-1	0	-1	-1	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	-1	-1	-1	0	-1	-1	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	-1	0	0	0	0	-1	0	-1	-1	0	-1	-1	-1	0	-1	0	0	0	0	0	0	-1	0	-1	-1	0	-1	-1	-1	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	-1	-1	-1	-1	0	0	0	0	-1	-1	-1	-1	0	-1	0	0	0	0	0	0	0	0	0	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	-1	-1	-1	-1	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	-1	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
% goodchannel = PCparams1.FZlookup - semichannel;

%% Body of the code
for BER_count = 1:length(EbN0_list)
	tt=tic();
	fprintf('\n Now running: %f  [%d of %d] \n\t Frame Counts: %53d',EbN0_list(BER_count),BER_count,length(EbN0_list),0);
    EbN0 = EbN0_list(BER_count);
    EbN0_num = 10.^(EbN0/10);
    N_0 = 1./(EbN0_num*Rate);
    BE_temp = zeros(1,max_frame_num);
    FE_temp = 0;
    % Each frame
    for f = 1:1:max_frame_num
        perm1 = randperm(sub_len);
        perm2 = randperm(sub_len);
        perm3 = randperm(sub_len);
        perm4 = randperm(sub_len);
        Left_LLR0 = zeros(PCparams0.n+1,PCparams0.N);
        Right_LLR0 = zeros(PCparams0.n+1,PCparams0.N);
        Right_LLR0(1,PCparams0.FZlookup == 0) = 1e10;
        Left_LLR1 = zeros(PCparams1.n+1,PCparams1.N);
        Right_LLR1 = zeros(PCparams1.n+1,PCparams1.N);
        Right_LLR1(1,PCparams1.FZlookup == 0) = 1e10;
        Left_LLR2 = zeros(PCparams2.n+1,PCparams2.N);
        Right_LLR2 = zeros(PCparams2.n+1,PCparams2.N);
        Right_LLR2(1,PCparams2.FZlookup == 0) = 1e10;
        Left_LLR3 = zeros(PCparams3.n+1,PCparams3.N);
        Right_LLR3 = zeros(PCparams3.n+1,PCparams3.N);
        Right_LLR3(1,PCparams3.FZlookup == 0) = 1e10;
        Left_LLR4 = zeros(PCparams4.n+1,PCparams4.N);
        Right_LLR4 = zeros(PCparams4.n+1,PCparams4.N);
        Right_LLR4(1,PCparams4.FZlookup == 0) = 1e10;
        %% Encoder
        % Generate information sequence into 2 parts K1,K2
        Ka1=randi([0 1],1,len_Ka);
        Ka2=randi([0 1],1,len_Ka);
        Ka3=randi([0 1],1,len_Ka);
        Ka4=randi([0 1],1,len_Ka);
        Kb1=randi([0 1],1,len_Kb);
        Kb2=randi([0 1],1,len_Kb);
        Kb3=randi([0 1],1,len_Kb);
        Kb4=randi([0 1],1,len_Kb);
        % Encode K1 in traditional encoder
        Ka = [Ka1,Ka2,Ka3,Ka4];
        s = zeros(1,N0);
        s(PCparams0.FZlookup == -1) = Ka;
        x0 = systematic_pencode0(s).';
        Pa = x0(PCparams0.FZlookup == 0);
        MessageSendForward1 = [Pa(1:sub_len/2),Ka(1:sub_len/2)];
        MessageSendForward2 = [Pa(sub_len/2+1:sub_len),Ka(sub_len/2+1:sub_len)];
        MessageSendForward3 = [Pa(sub_len+1:sub_len*3/2),Ka(sub_len+1:sub_len*3/2)];
        MessageSendForward4 = [Pa(sub_len*3/2+1:2*sub_len),Ka(sub_len*3/2+1:2*sub_len)];
        % Interleave
        pi_MSF1 = interleaver(MessageSendForward1,perm1);
        pi_MSF2 = interleaver(MessageSendForward2,perm2);
        pi_MSF3 = interleaver(MessageSendForward3,perm3);
        pi_MSF4 = interleaver(MessageSendForward4,perm4);
        % Encode [X1,K2] in traditional encoder
        x1 = pencode_BP1_auxiliary(pi_MSF1,Kb1,semichannel,goodchannel);
        x2 = pencode_BP2_auxiliary(pi_MSF2,Kb2,semichannel,goodchannel);
        x3 = pencode_BP3_auxiliary(pi_MSF3,Kb3,semichannel,goodchannel);
        x4 = pencode_BP4_auxiliary(pi_MSF4,Kb4,semichannel,goodchannel);
        x_total = [x1,x2,x3,x4];
        %% Channel Noise
        % Add Gaussian White Noise 
        y = (2*x_total-1) + randn(size(x_total)).*sqrt(N_0/2);
        %% Decoder
        % Decode X1,X2 seperately in G1 and G2
        initial_llr_total = LLR(y,N_0/2);
        initial_info_total = [Ka1 Kb1 Ka2 Kb2 Ka3 Kb3 Ka4 Kb4];
        initial_llr1 = initial_llr_total(1:1024);
        initial_llr2 = initial_llr_total(1025:2048);
        initial_llr3 = initial_llr_total(2049:3072);
        initial_llr4 = initial_llr_total(3073:4096);

        Left_LLR1(end,:) = initial_llr1;
        Left_LLR2(end,:) = initial_llr2;
        Left_LLR3(end,:) = initial_llr3;
        Left_LLR4(end,:) = initial_llr4;

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

            % Left-to-Right
            n = PCparams3.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR3(L+1,I) = fFunction(Right_LLR3(L,I),Right_LLR3(L,I+D) + Left_LLR3(L+1,I+D));
                        Right_LLR3(L+1,I+D) = fFunction(Left_LLR3(L+1,I), Right_LLR3(L,I)) + Right_LLR3(L,I+D);              
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
                        Left_LLR3(L,I) = fFunction(Left_LLR3(L+1,I),Right_LLR3(L,I+D) + Left_LLR3(L+1,I+D));
                        Left_LLR3(L,I+D) = fFunction(Left_LLR3(L+1,I), Right_LLR3(L,I)) + Left_LLR3(L+1,I+D);
                    end
                end
            end

            % early_stop3
            x_hat3 = (Right_LLR3(n+1,:) + Left_LLR3(n+1,:)) < 0;
            d_hat3 = (Right_LLR3(1,:) + Left_LLR3(1,:)) < 0;
            x_enc3 = FN_transform(d_hat3);
            if all(x_hat3 == x_enc3)
                early_stop3 = 1;
            else
                early_stop3 = 0;
            end

            L_l3 = Left_LLR3(1,:);

            % pick out L-messages to send back
            llr_back3=L_l3(semichannel == -1);
            % uninterleave
            llr_back3=uninterleaver(llr_back3,perm3);

            % Left-to-Right
            n = PCparams4.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR4(L+1,I) = fFunction(Right_LLR4(L,I),Right_LLR4(L,I+D) + Left_LLR4(L+1,I+D));
                        Right_LLR4(L+1,I+D) = fFunction(Left_LLR4(L+1,I), Right_LLR4(L,I)) + Right_LLR4(L,I+D);              
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
                        Left_LLR4(L,I) = fFunction(Left_LLR4(L+1,I),Right_LLR4(L,I+D) + Left_LLR4(L+1,I+D));
                        Left_LLR4(L,I+D) = fFunction(Left_LLR4(L+1,I), Right_LLR4(L,I)) + Left_LLR4(L+1,I+D);
                    end
                end
            end

            % early_stop4
            x_hat4 = (Right_LLR4(n+1,:) + Left_LLR4(n+1,:)) < 0;
            d_hat4 = (Right_LLR4(1,:) + Left_LLR4(1,:)) < 0;
            x_enc4 = FN_transform(d_hat4);
            if all(x_hat4 == x_enc4)
                early_stop4 = 1;
            else
                early_stop4 = 0;
            end

            L_l4 = Left_LLR4(1,:);

            % pick out L-messages to send back
            llr_back4=L_l4(semichannel == -1);
            % uninterleave
            llr_back4=uninterleaver(llr_back4,perm4);

            llr_back_Pa = [llr_back1(1:sub_len/2),llr_back2(1:sub_len/2),llr_back3(1:sub_len/2),llr_back4(1:sub_len/2)];
            llr_back_Ka = [llr_back1(sub_len/2+1:end),llr_back2(sub_len/2+1:end),llr_back3(sub_len/2+1:end),llr_back4(sub_len/2+1:end)];

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
            llr_forward1 = [Pa_llr(1:sub_len/2),Ka_llr(1:sub_len/2)];
            llr_forward2 = [Pa_llr(sub_len/2+1:sub_len),Ka_llr(sub_len/2+1:sub_len)];
            llr_forward3 = [Pa_llr(sub_len+1:sub_len*3/2),Ka_llr(sub_len+1:sub_len*3/2)];
            llr_forward4 = [Pa_llr(sub_len*3/2+1:2*sub_len),Ka_llr(sub_len*3/2+1:2*sub_len)];

            pi_llr1 = interleaver(llr_forward1,perm1);
            pi_llr2 = interleaver(llr_forward2,perm2);
            pi_llr3 = interleaver(llr_forward3,perm3);
            pi_llr4 = interleaver(llr_forward4,perm4);

            % send R-message-outer forward 
            temp = Right_LLR1(1,:);
            temp(semichannel == -1) = pi_llr1;
            Right_LLR1(1,:)=temp;
            % send R-message-outer forward 
            temp = Right_LLR2(1,:);
            temp(semichannel == -1) = pi_llr2;
            Right_LLR2(1,:)=temp;
            % send R-message-outer forward 
            temp = Right_LLR3(1,:);
            temp(semichannel == -1) = pi_llr3;
            Right_LLR3(1,:)=temp;
            % send R-message-outer forward 
            temp = Right_LLR4(1,:);
            temp(semichannel == -1) = pi_llr4;
            Right_LLR4(1,:)=temp;

            if(early_stop0 == 1 && early_stop1 == 1 && early_stop2 == 1 && early_stop3 == 1 && early_stop4 == 1)

                early_stop = 1;
                u_llr0 = Right_LLR0(1,:) + Left_LLR0(1,:);
                u_llr1 = Right_LLR1(1,:) + Left_LLR1(1,:);
                u_llr2 = Right_LLR2(1,:) + Left_LLR2(1,:);
                u_llr3 = Right_LLR3(1,:) + Left_LLR3(1,:);
                u_llr4 = Right_LLR4(1,:) + Left_LLR4(1,:);

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

                u_llr3 = u_llr3(goodchannel == -1);
                K3_hat = zeros(1,len_Kb);
                K3_hat(u_llr3<0) = 1;

                u_llr4 = u_llr4(goodchannel == -1);
                K4_hat = zeros(1,len_Kb);
                K4_hat(u_llr4<0) = 1;

                info_hat = [K0_hat(1:sub_len/2),K1_hat,K0_hat(sub_len/2+1:sub_len),K2_hat,K0_hat(sub_len+1:sub_len*3/2),K3_hat,K0_hat(sub_len*3/2+1:2*sub_len),K4_hat];

                BE_temp(f) = sum(xor(info_hat,initial_info_total));

                break
            end
        end

        if(early_stop == 0)

            u_llr0 = Right_LLR0(1,:) + Left_LLR0(1,:);
            u_llr1 = Right_LLR1(1,:) + Left_LLR1(1,:);
            u_llr2 = Right_LLR2(1,:) + Left_LLR2(1,:);
            u_llr3 = Right_LLR3(1,:) + Left_LLR3(1,:);
            u_llr4 = Right_LLR4(1,:) + Left_LLR4(1,:);

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

            u_llr3 = u_llr3(goodchannel == -1);
            K3_hat = zeros(1,len_Kb);
            K3_hat(u_llr3<0) = 1;

            u_llr4 = u_llr4(goodchannel == -1);
            K4_hat = zeros(1,len_Kb);
            K4_hat(u_llr4<0) = 1;

            info_hat = [K0_hat(1:sub_len/2),K1_hat,K0_hat(sub_len/2+1:sub_len),K2_hat,K0_hat(sub_len+1:sub_len*3/2),K3_hat,K0_hat(sub_len*3/2+1:2*sub_len),K4_hat];

            BE_temp(f) = sum(xor(info_hat,initial_info_total));
        end

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
