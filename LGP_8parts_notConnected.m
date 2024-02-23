%% Initial parameter setting

% %N=1024,64,Rate_eff=0.5------BA,SNR=0
% semichannel = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	1	0	0	1	1	0	1	0	0	0	0	0	0	1	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	1	1	0	0	1	1	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
% goodchannel = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	1	0	0	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	1	1	1	1	1	0	0	0	0	0	0	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1];

%N=1024,128,Rate_eff=0.5------BA,SNR=0
semichannel = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	0	0	0	0	1	1	1	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	1	1	1	1	1	0	0	0	0	0	0	0	1	1	0	1	1	0	1	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	1	1	0	0	1	1	0	1	0	0	0	0	0	0	1	0	1	1	0	0	1	1	0	1	0	0	0	1	1	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	0	1	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	1	1	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	1	0	1	1	0	0	1	1	0	1	0	0	0	0	0	0	1	1	1	1	0	1	1	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	0	0	0	1	1	1	1	1	0	1	0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	1	1	1	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
goodchannel = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	1	0	0	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1];

% %N=1024,256,Rate_eff=0.5------BA,SNR=0
% semichannel = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	1	1	1	1	1	0	0	0	0	0	0	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	0	1	1	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	0	0	0	0	1	0	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	1	1	1	1	1	1	1	1	1	1	1	1	0	0	1	1	1	1	1	1	1	1	1	1	0	1	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	1	1	1	1	1	1	0	1	1	1	0	1	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	1	0	0	0	1	1	1	1	1	0	0	1	1	1	1	1	1	1	1	1	0	1	0	0	0	0	1	1	1	1	1	1	0	1	1	1	0	1	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	1	1	1	1	1	0	0	1	1	1	1	1	1	0	1	1	1	0	1	0	0	0	1	1	1	1	1	1	1	0	1	1	1	0	1	0	0	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	0	1	1	0	0	0	0	0	0	1	1	1	1	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	1	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
% goodchannel = -[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	1	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	0	1	1	1	0	0	0	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	1	1	1	1	1	1	0	0	0	0	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	1	0	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1];

EbN0_list = 2:0.2:3.2;
BER = zeros(1,length(EbN0_list));
FER = zeros(1,length(EbN0_list));
min_frame_errors = 100;
min_frame_num = 1e3; 
max_frame_num = 1e6;
NumberOfParts = 8;
sub_len = 128;

global PCparams0;
N0 = 1024;
K0 = N0/2;  
initPC(N0,K0);

global PCparams1;
N1 = 1024;
K1 = (N1+sub_len)/2;  
initPC1(N1,K1);

global PCparams2;
N2 = 1024;
K2 = (N2+sub_len)/2;  
initPC2(N2,K2);

global PCparams3;
N3 = 1024;
K3 = (N3+sub_len)/2;  
initPC3(N3,K3);

global PCparams4;
N4 = 1024;
K4 = (N4+sub_len)/2;  
initPC4(N4,K4);

global PCparams5;
N5 = 1024;
K5 = (N5+sub_len)/2;  
initPC5(N5,K5);

global PCparams6;
N6 = 1024;
K6 = (N6+sub_len)/2;  
initPC6(N6,K6);

global PCparams7;
N7 = 1024;
K7 = (N7+sub_len)/2;  
initPC7(N7,K7);

global PCparams8;
N8 = 1024;
K8 = (N8+sub_len)/2;  
initPC8(N8,K8);

len_Ka=sub_len/2;
len_Kb=K1-sub_len; 
Max = 200;
Rate = (len_Ka+len_Kb)/N1;

%% Body of the code
for BER_count = 1:length(EbN0_list)
	tt=tic();
	fprintf('\n Now running: %f  [%d of %d] \n\t Frame Counts: %53d',EbN0_list(BER_count),BER_count,length(EbN0_list),0);
    EbN0 = EbN0_list(BER_count);
    EbN0_num = 10.^(EbN0/10);
    N_0 = 1./(EbN0_num*Rate);
    BE_temp = zeros(1,max_frame_num);
    BE_temp1 = zeros(1,max_frame_num);
    BE_temp2 = zeros(1,max_frame_num);
    BE_temp3 = zeros(1,max_frame_num);
    BE_temp4 = zeros(1,max_frame_num);
    BE_temp5 = zeros(1,max_frame_num);
    BE_temp6 = zeros(1,max_frame_num);
    BE_temp7 = zeros(1,max_frame_num);
    BE_temp8 = zeros(1,max_frame_num);
    FE_temp = 0;
    % Each frame
    for f = 1:1:max_frame_num
        perm1 = randperm(sub_len);
        perm2 = randperm(sub_len);
        perm3 = randperm(sub_len);
        perm4 = randperm(sub_len);
        perm5 = randperm(sub_len);
        perm6 = randperm(sub_len);
        perm7 = randperm(sub_len);
        perm8 = randperm(sub_len);
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
        Left_LLR5 = zeros(PCparams5.n+1,PCparams5.N);
        Right_LLR5 = zeros(PCparams5.n+1,PCparams5.N);
        Right_LLR5(1,PCparams5.FZlookup == 0) = 1e10;
        Left_LLR6 = zeros(PCparams6.n+1,PCparams6.N);
        Right_LLR6 = zeros(PCparams6.n+1,PCparams6.N);
        Right_LLR6(1,PCparams6.FZlookup == 0) = 1e10;
        Left_LLR7 = zeros(PCparams7.n+1,PCparams7.N);
        Right_LLR7 = zeros(PCparams7.n+1,PCparams7.N);
        Right_LLR7(1,PCparams7.FZlookup == 0) = 1e10;
        Left_LLR8 = zeros(PCparams8.n+1,PCparams8.N);
        Right_LLR8 = zeros(PCparams8.n+1,PCparams8.N);
        Right_LLR8(1,PCparams8.FZlookup == 0) = 1e10;
        %% Encoder
        % Generate information sequence into 2 parts K1,K2
        Ka1=randi([0 1],1,len_Ka);
        Ka2=randi([0 1],1,len_Ka);
        Ka3=randi([0 1],1,len_Ka);
        Ka4=randi([0 1],1,len_Ka);
        Ka5=randi([0 1],1,len_Ka);
        Ka6=randi([0 1],1,len_Ka);
        Ka7=randi([0 1],1,len_Ka);
        Ka8=randi([0 1],1,len_Ka);
        Kb1=randi([0 1],1,len_Kb);
        Kb2=randi([0 1],1,len_Kb);
        Kb3=randi([0 1],1,len_Kb);
        Kb4=randi([0 1],1,len_Kb);
        Kb5=randi([0 1],1,len_Kb);
        Kb6=randi([0 1],1,len_Kb);
        Kb7=randi([0 1],1,len_Kb);
        Kb8=randi([0 1],1,len_Kb);
        % encode K1 in traditional encoder
        Ka = [Ka1,Ka2,Ka3,Ka4,Ka5,Ka6,Ka7,Ka8];
        s = zeros(1,N0);
        s(PCparams0.FZlookup == -1) = Ka;
        x0 = systematic_pencode0(s).';
        Pa = x0(PCparams0.FZlookup == 0);
        MessageSendForward1 = [Pa(1:sub_len/2),Ka(1:sub_len/2)];
        MessageSendForward2 = [Pa(sub_len/2+1:sub_len),Ka(sub_len/2+1:sub_len)];
        MessageSendForward3 = [Pa(sub_len+1:sub_len*3/2),Ka(sub_len+1:sub_len*3/2)];
        MessageSendForward4 = [Pa(sub_len*3/2+1:2*sub_len),Ka(sub_len*3/2+1:2*sub_len)];
        MessageSendForward5 = [Pa(sub_len*2+1:(5/2)*sub_len),Ka(sub_len*2+1:(5/2)*sub_len)];
        MessageSendForward6 = [Pa((5/2)*sub_len+1:3*sub_len),Ka((5/2)*sub_len+1:3*sub_len)];
        MessageSendForward7 = [Pa(3*sub_len+1:(7/2)*sub_len),Ka(3*sub_len+1:(7/2)*sub_len)];
        MessageSendForward8 = [Pa((7/2)*sub_len+1:4*sub_len),Ka((7/2)*sub_len+1:4*sub_len)];
        % Interleave
        pi_MSF1 = interleaver(MessageSendForward1,perm1);
        pi_MSF2 = interleaver(MessageSendForward2,perm2);
        pi_MSF3 = interleaver(MessageSendForward3,perm3);
        pi_MSF4 = interleaver(MessageSendForward4,perm4);
        pi_MSF5 = interleaver(MessageSendForward5,perm5);
        pi_MSF6 = interleaver(MessageSendForward6,perm6);
        pi_MSF7 = interleaver(MessageSendForward7,perm7);
        pi_MSF8 = interleaver(MessageSendForward8,perm8);
        % Encode [X1,K2] in traditional encoder
        x1 = pencode_BP1_auxiliary(pi_MSF1,Kb1,semichannel,goodchannel);
        x2 = pencode_BP2_auxiliary(pi_MSF2,Kb2,semichannel,goodchannel);
        x3 = pencode_BP3_auxiliary(pi_MSF3,Kb3,semichannel,goodchannel);
        x4 = pencode_BP4_auxiliary(pi_MSF4,Kb4,semichannel,goodchannel);
        x5 = pencode_BP5_auxiliary(pi_MSF5,Kb5,semichannel,goodchannel);
        x6 = pencode_BP6_auxiliary(pi_MSF6,Kb6,semichannel,goodchannel);
        x7 = pencode_BP7_auxiliary(pi_MSF7,Kb7,semichannel,goodchannel);
        x8 = pencode_BP8_auxiliary(pi_MSF8,Kb8,semichannel,goodchannel);
        x_total = [x1,x2,x3,x4,x5,x6,x7,x8];
        %% Channel Noise
        % Add Gaussian White Noise 
        y = (2*x_total-1) + randn(size(x_total)).*sqrt(N_0/2);
        %% Decoder
        % Decode X1,X2 seperately in G1 and G2
        initial_llr_total = LLR(y,N_0/2);
        initial_info_total = [Ka1 Kb1 Ka2 Kb2 Ka3 Kb3 Ka4 Kb4 Ka5 Kb5 Ka6 Kb6 Ka7 Kb7 Ka8 Kb8];
        initial_llr1 = initial_llr_total(1:1024);
        initial_llr2 = initial_llr_total(1025:2048);
        initial_llr3 = initial_llr_total(2049:3072);
        initial_llr4 = initial_llr_total(3073:4096);
        initial_llr5 = initial_llr_total(4097:5120);
        initial_llr6 = initial_llr_total(5121:6144);
        initial_llr7 = initial_llr_total(6145:7168);
        initial_llr8 = initial_llr_total(7169:8192);

        Left_LLR1(end,:) = initial_llr1;
        Left_LLR2(end,:) = initial_llr2;
        Left_LLR3(end,:) = initial_llr3;
        Left_LLR4(end,:) = initial_llr4;
        Left_LLR5(end,:) = initial_llr5;
        Left_LLR6(end,:) = initial_llr6;
        Left_LLR7(end,:) = initial_llr7;
        Left_LLR8(end,:) = initial_llr8;

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

            if (early_stop1 == 1)
                u_llr1 = Right_LLR1(1,:) + Left_LLR1(1,:);

                pi_i1_llr = u_llr1(semichannel == -1);
                u_llr1 = u_llr1(goodchannel == -1);

                K1_hat = zeros(1,len_Kb);
                K1_hat(u_llr1 < 0) = 1;

                pi_i1 = zeros(1,K0);
                pi_i1(pi_i1_llr < 0) = 1;
                i1 = uninterleaver(pi_i1,perm1);
                Ka1_hat = i1(length(i1)/2+1:end);

                info_hat = [Ka1_hat,K1_hat];
                BE_temp1(f) = sum(xor(info_hat,[Ka1,Kb1]));
                break
            end

        end

        if (early_stop1 == 0)
            u_llr1 = Right_LLR1(1,:) + Left_LLR1(1,:);
    
            pi_i1_llr = u_llr1(semichannel == -1);
            u_llr1 = u_llr1(goodchannel == -1);
    
            K1_hat = zeros(1,len_Kb);
            K1_hat(u_llr1 < 0) = 1;
    
            pi_i1 = zeros(1,K0);
            pi_i1(pi_i1_llr < 0) = 1;
            i1 = uninterleaver(pi_i1,perm1);
            Ka1_hat = i1(length(i1)/2+1:end);
    
            info_hat = [Ka1_hat,K1_hat];
            BE_temp1(f) = sum(xor(info_hat,[Ka1,Kb1]));
        end

        for loop = 1:1:Max

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

            if (early_stop2 == 1)
                u_llr2 = Right_LLR2(1,:) + Left_LLR2(1,:);

                pi_i2_llr = u_llr2(semichannel == -1);
                u_llr2 = u_llr2(goodchannel == -1);

                K2_hat = zeros(1,len_Kb);
                K2_hat(u_llr2 < 0) = 1;

                pi_i2 = zeros(1,K0);
                pi_i2(pi_i2_llr < 0) = 1;
                i2 = uninterleaver(pi_i2,perm2);
                Ka2_hat = i2(length(i2)/2+1:end);

                info_hat = [Ka2_hat,K2_hat];
                BE_temp2(f) = sum(xor(info_hat,[Ka2,Kb2]));
                break
            end

        end

        if (early_stop2 == 0)
            u_llr2 = Right_LLR2(1,:) + Left_LLR2(1,:);

            pi_i2_llr = u_llr2(semichannel == -1);
            u_llr2 = u_llr2(goodchannel == -1);

            K2_hat = zeros(1,len_Kb);
            K2_hat(u_llr2 < 0) = 1;

            pi_i2 = zeros(1,K0);
            pi_i2(pi_i2_llr < 0) = 1;
            i2 = uninterleaver(pi_i2,perm2);
            Ka2_hat = i2(length(i2)/2+1:end);

            info_hat = [Ka2_hat,K2_hat];
            BE_temp2(f) = sum(xor(info_hat,[Ka2,Kb2]));
        end

        for loop = 1:1:Max
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

            if (early_stop3 == 1)
                u_llr3 = Right_LLR3(1,:) + Left_LLR3(1,:);

                pi_i3_llr = u_llr3(semichannel == -1);
                u_llr3 = u_llr3(goodchannel == -1);

                K3_hat = zeros(1,len_Kb);
                K3_hat(u_llr3 < 0) = 1;

                pi_i3 = zeros(1,K0);
                pi_i3(pi_i3_llr < 0) = 1;
                i3 = uninterleaver(pi_i3,perm3);
                Ka3_hat = i3(length(i3)/2+1:end);

                info_hat = [Ka3_hat,K3_hat];
                BE_temp3(f) = sum(xor(info_hat,[Ka3,Kb3]));
                break
            end

        end
        if (early_stop3 == 0)
            u_llr3 = Right_LLR3(1,:) + Left_LLR3(1,:);

            pi_i3_llr = u_llr3(semichannel == -1);
            u_llr3 = u_llr3(goodchannel == -1);

            K3_hat = zeros(1,len_Kb);
            K3_hat(u_llr3 < 0) = 1;

            pi_i3 = zeros(1,K0);
            pi_i3(pi_i3_llr < 0) = 1;
            i3 = uninterleaver(pi_i3,perm3);
            Ka3_hat = i3(length(i3)/2+1:end);

            info_hat = [Ka3_hat,K3_hat];
            BE_temp3(f) = sum(xor(info_hat,[Ka3,Kb3]));
        end
        
        for loop = 1:1:Max
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

            if (early_stop4 == 1)
                u_llr4 = Right_LLR4(1,:) + Left_LLR4(1,:);

                pi_i4_llr = u_llr4(semichannel == -1);
                u_llr4 = u_llr4(goodchannel == -1);

                K4_hat = zeros(1,len_Kb);
                K4_hat(u_llr4 < 0) = 1;

                pi_i4 = zeros(1,K0);
                pi_i4(pi_i4_llr < 0) = 1;
                i4 = uninterleaver(pi_i4,perm4);
                Ka4_hat = i4(length(i4)/2+1:end);

                info_hat = [Ka4_hat,K4_hat];
                BE_temp4(f) = sum(xor(info_hat,[Ka4,Kb4]));
                break
            end

        end
        if (early_stop4 == 0)
            u_llr4 = Right_LLR4(1,:) + Left_LLR4(1,:);

            pi_i4_llr = u_llr4(semichannel == -1);
            u_llr4 = u_llr4(goodchannel == -1);

            K4_hat = zeros(1,len_Kb);
            K4_hat(u_llr4 < 0) = 1;

            pi_i4 = zeros(1,K0);
            pi_i4(pi_i4_llr < 0) = 1;
            i4 = uninterleaver(pi_i4,perm4);
            Ka4_hat = i4(length(i4)/2+1:end);

            info_hat = [Ka4_hat,K4_hat];
            BE_temp4(f) = sum(xor(info_hat,[Ka4,Kb4]));
        end
        
        for loop = 1:1:Max
            % Left-to-Right
            n = PCparams5.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR5(L+1,I) = fFunction(Right_LLR5(L,I),Right_LLR5(L,I+D) + Left_LLR5(L+1,I+D));
                        Right_LLR5(L+1,I+D) = fFunction(Left_LLR5(L+1,I), Right_LLR5(L,I)) + Right_LLR5(L,I+D);              
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
                        Left_LLR5(L,I) = fFunction(Left_LLR5(L+1,I),Right_LLR5(L,I+D) + Left_LLR5(L+1,I+D));
                        Left_LLR5(L,I+D) = fFunction(Left_LLR5(L+1,I), Right_LLR5(L,I)) + Left_LLR5(L+1,I+D);
                    end
                end
            end

            % early_stop4
            x_hat5 = (Right_LLR5(n+1,:) + Left_LLR5(n+1,:)) < 0;
            d_hat5 = (Right_LLR5(1,:) + Left_LLR5(1,:)) < 0;
            x_enc5 = FN_transform(d_hat5);

            if all(x_hat5 == x_enc5)
                early_stop5 = 1;
            else
                early_stop5 = 0;
            end

            if (early_stop5 == 1)
                u_llr5 = Right_LLR5(1,:) + Left_LLR5(1,:);

                pi_i5_llr = u_llr5(semichannel == -1);
                u_llr5 = u_llr5(goodchannel == -1);

                K5_hat = zeros(1,len_Kb);
                K5_hat(u_llr5 < 0) = 1;

                pi_i5 = zeros(1,K0);
                pi_i5(pi_i5_llr < 0) = 1;
                i5 = uninterleaver(pi_i5,perm5);
                Ka5_hat = i5(length(i5)/2+1:end);

                info_hat = [Ka5_hat,K5_hat];
                BE_temp5(f) = sum(xor(info_hat,[Ka5,Kb5]));
                break
            end

        end

        if (early_stop5 == 0)
            u_llr5 = Right_LLR5(1,:) + Left_LLR5(1,:);

            pi_i5_llr = u_llr5(semichannel == -1);
            u_llr5 = u_llr5(goodchannel == -1);

            K5_hat = zeros(1,len_Kb);
            K5_hat(u_llr5 < 0) = 1;

            pi_i5 = zeros(1,K0);
            pi_i5(pi_i5_llr < 0) = 1;
            i5 = uninterleaver(pi_i5,perm5);
            Ka5_hat = i5(length(i5)/2+1:end);

            info_hat = [Ka5_hat,K5_hat];
            BE_temp5(f) = sum(xor(info_hat,[Ka5,Kb5]));
        end

        for loop = 1:1:Max
            % Left-to-Right
            n = PCparams6.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR6(L+1,I) = fFunction(Right_LLR6(L,I),Right_LLR6(L,I+D) + Left_LLR6(L+1,I+D));
                        Right_LLR6(L+1,I+D) = fFunction(Left_LLR6(L+1,I), Right_LLR6(L,I)) + Right_LLR6(L,I+D);              
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
                        Left_LLR6(L,I) = fFunction(Left_LLR6(L+1,I),Right_LLR6(L,I+D) + Left_LLR6(L+1,I+D));
                        Left_LLR6(L,I+D) = fFunction(Left_LLR6(L+1,I), Right_LLR6(L,I)) + Left_LLR6(L+1,I+D);
                    end
                end
            end

            % early_stop4
            x_hat6 = (Right_LLR6(n+1,:) + Left_LLR6(n+1,:)) < 0;
            d_hat6 = (Right_LLR6(1,:) + Left_LLR6(1,:)) < 0;
            x_enc6 = FN_transform(d_hat6);

            if all(x_hat6 == x_enc6)
                early_stop6 = 1;
            else
                early_stop6 = 0;
            end

            if (early_stop6 == 1)
                u_llr6 = Right_LLR6(1,:) + Left_LLR6(1,:);

                pi_i6_llr = u_llr6(semichannel == -1);
                u_llr6 = u_llr6(goodchannel == -1);

                K6_hat = zeros(1,len_Kb);
                K6_hat(u_llr6 < 0) = 1;

                pi_i6 = zeros(1,K0);
                pi_i6(pi_i6_llr < 0) = 1;
                i6 = uninterleaver(pi_i6,perm6);
                Ka6_hat = i6(length(i6)/2+1:end);

                info_hat = [Ka6_hat,K6_hat];
                BE_temp6(f) = sum(xor(info_hat,[Ka6,Kb6]));
                break
            end

        end

        if (early_stop6 == 0)
            u_llr6 = Right_LLR6(1,:) + Left_LLR6(1,:);

            pi_i6_llr = u_llr6(semichannel == -1);
            u_llr6 = u_llr6(goodchannel == -1);

            K6_hat = zeros(1,len_Kb);
            K6_hat(u_llr6 < 0) = 1;

            pi_i6 = zeros(1,K0);
            pi_i6(pi_i6_llr < 0) = 1;
            i6 = uninterleaver(pi_i6,perm6);
            Ka6_hat = i6(length(i6)/2+1:end);

            info_hat = [Ka6_hat,K6_hat];
            BE_temp6(f) = sum(xor(info_hat,[Ka6,Kb6]));
        end
        
        for loop = 1:1:Max
            % Left-to-Right
            n = PCparams7.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR7(L+1,I) = fFunction(Right_LLR7(L,I),Right_LLR7(L,I+D) + Left_LLR7(L+1,I+D));
                        Right_LLR7(L+1,I+D) = fFunction(Left_LLR7(L+1,I), Right_LLR7(L,I)) + Right_LLR7(L,I+D);              
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
                        Left_LLR7(L,I) = fFunction(Left_LLR7(L+1,I),Right_LLR7(L,I+D) + Left_LLR7(L+1,I+D));
                        Left_LLR7(L,I+D) = fFunction(Left_LLR7(L+1,I), Right_LLR7(L,I)) + Left_LLR7(L+1,I+D);
                    end
                end
            end

            % early_stop4
            x_hat7 = (Right_LLR7(n+1,:) + Left_LLR7(n+1,:)) < 0;
            d_hat7 = (Right_LLR7(1,:) + Left_LLR7(1,:)) < 0;
            x_enc7 = FN_transform(d_hat7);

            if all(x_hat7 == x_enc7)
                early_stop7 = 1;
            else
                early_stop7 = 0;
            end

            if (early_stop7 == 1)
                u_llr7 = Right_LLR7(1,:) + Left_LLR7(1,:);

                pi_i7_llr = u_llr7(semichannel == -1);
                u_llr7 = u_llr7(goodchannel == -1);

                K7_hat = zeros(1,len_Kb);
                K7_hat(u_llr7 < 0) = 1;

                pi_i7 = zeros(1,K0);
                pi_i7(pi_i7_llr < 0) = 1;
                i7 = uninterleaver(pi_i7,perm7);
                Ka7_hat = i7(length(i7)/2+1:end);

                info_hat = [Ka7_hat,K7_hat];
                BE_temp7(f) = sum(xor(info_hat,[Ka7,Kb7]));
                break
            end

        end

        if (early_stop7 == 0)
            u_llr7 = Right_LLR7(1,:) + Left_LLR7(1,:);

            pi_i7_llr = u_llr7(semichannel == -1);
            u_llr7 = u_llr7(goodchannel == -1);

            K7_hat = zeros(1,len_Kb);
            K7_hat(u_llr7 < 0) = 1;

            pi_i7 = zeros(1,K0);
            pi_i7(pi_i7_llr < 0) = 1;
            i7 = uninterleaver(pi_i7,perm7);
            Ka7_hat = i7(length(i7)/2+1:end);

            info_hat = [Ka7_hat,K7_hat];
            BE_temp7(f) = sum(xor(info_hat,[Ka7,Kb7]));
        end
        
        for loop = 1:1:Max
            % Left-to-Right
            n = PCparams8.n;
            for L = 1:n % the layer index
                NumOfPhase = 2^(n-L); % In each layer, all N bits are divided into NumOfPhase*NumOfBit
                NumOfBit = 2^L; % number of bits in each phase
                D = 2^(L-1); % distance between two bits associated with XOR
                for i = 1:NumOfPhase
                    for j = 1:(NumOfBit/2)
                        I = (i-1)*NumOfBit + j; % the bit index in {1,2,...,N}
                        Right_LLR8(L+1,I) = fFunction(Right_LLR8(L,I),Right_LLR8(L,I+D) + Left_LLR8(L+1,I+D));
                        Right_LLR8(L+1,I+D) = fFunction(Left_LLR8(L+1,I), Right_LLR8(L,I)) + Right_LLR8(L,I+D);              
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
                        Left_LLR8(L,I) = fFunction(Left_LLR8(L+1,I),Right_LLR8(L,I+D) + Left_LLR8(L+1,I+D));
                        Left_LLR8(L,I+D) = fFunction(Left_LLR8(L+1,I), Right_LLR8(L,I)) + Left_LLR8(L+1,I+D);
                    end
                end
            end

            % early_stop4
            x_hat8 = (Right_LLR8(n+1,:) + Left_LLR8(n+1,:)) < 0;
            d_hat8 = (Right_LLR8(1,:) + Left_LLR8(1,:)) < 0;
            x_enc8 = FN_transform(d_hat8);

            if all(x_hat8 == x_enc8)
                early_stop8 = 1;
            else
                early_stop8 = 0;
            end

            if (early_stop8 == 1)
                u_llr8 = Right_LLR8(1,:) + Left_LLR8(1,:);

                pi_i8_llr = u_llr8(semichannel == -1);
                u_llr8 = u_llr8(goodchannel == -1);

                K8_hat = zeros(1,len_Kb);
                K8_hat(u_llr8 < 0) = 1;

                pi_i8 = zeros(1,K0);
                pi_i8(pi_i8_llr < 0) = 1;
                i8 = uninterleaver(pi_i8,perm8);
                Ka8_hat = i8(length(i8)/2+1:end);

                info_hat = [Ka8_hat,K8_hat];
                BE_temp8(f) = sum(xor(info_hat,[Ka8,Kb8]));
                break
            end

        end

        if (early_stop8 == 0)
            u_llr8 = Right_LLR8(1,:) + Left_LLR8(1,:);

            pi_i8_llr = u_llr8(semichannel == -1);
            u_llr8 = u_llr8(goodchannel == -1);

            K8_hat = zeros(1,len_Kb);
            K8_hat(u_llr8 < 0) = 1;

            pi_i8 = zeros(1,K0);
            pi_i8(pi_i8_llr < 0) = 1;
            i8 = uninterleaver(pi_i8,perm8);
            Ka8_hat = i8(length(i8)/2+1:end);

            info_hat = [Ka8_hat,K8_hat];
            BE_temp8(f) = sum(xor(info_hat,[Ka8,Kb8]));
        end

        BE_temp(f) = BE_temp1(f)+BE_temp2(f)+BE_temp3(f)+BE_temp4(f)+BE_temp5(f)+BE_temp6(f)+BE_temp7(f)+BE_temp8(f);

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
