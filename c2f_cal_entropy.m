%%
clc
clear
% cd("C:\Users\DEEP RANJAN\Desktop\multiscale_entropy\calculated_entropy\")
% approx_healthy = load('approx_sz.mat').approx_healthy;
% permute_healthy = load('permute_sz.mat').permute_healthy;
% sample_healthy = load('sample_sz.mat').sample_healthy;
% renyi_healthy = load('renyi_sz.mat').renyi_healthy;

%%
cd('C:\Users\DEEP RANJAN\Desktop\multiscale_entropy\decomposition\data_sz\') 

no_of_modes = 10;
for k=1: 626
    tic
    FileName=strcat('u_sz_',num2str(k),'.mat')
    u = load(FileName);
    
%

    u1(:,:,:)=permute(u.u,[3 1 2]);
    
    imf_ch1(:,:)=u1(1,1:no_of_modes,:);
    imf_ch2(:,:)=u1(2,1:no_of_modes,:);
    imf_ch3(:,:)=u1(3,1:no_of_modes,:);
    imf_ch4(:,:)=u1(4,1:no_of_modes,:);
    imf_ch5(:,:)=u1(5,1:no_of_modes,:);
    imf_ch6(:,:)=u1(6,1:no_of_modes,:);
    imf_ch7(:,:)=u1(7,1:no_of_modes,:);
    imf_ch8(:,:)=u1(8,1:no_of_modes,:);
    
    imf_ch9(:,:)=u1(9,1:no_of_modes,:);
    imf_ch10(:,:)=u1(10,1:no_of_modes,:);
    imf_ch11(:,:)=u1(11,1:no_of_modes,:);
    imf_ch12(:,:)=u1(12,1:no_of_modes,:);
    imf_ch13(:,:)=u1(13,1:no_of_modes,:);
    imf_ch14(:,:)=u1(14,1:no_of_modes,:);
    imf_ch15(:,:)=u1(15,1:no_of_modes,:);
    imf_ch16(:,:)=u1(16,1:no_of_modes,:);
    imf_ch17(:,:)=u1(17,1:no_of_modes,:);
    imf_ch18(:,:)=u1(18,1:no_of_modes,:);
    imf_ch19(:,:)=u1(19,1:no_of_modes,:);

%

% for i1=1:no_of_modes
%     subplot(10,2,i1)
% plot(abs(fft(hilbert(imf_ch2(i1,:)))))
% end

%
    [m_1,n_1]=size(imf_ch1);
    
    x_1=zeros(1,n_1);
    x_2=zeros(1,n_1);
    x_3=zeros(1,n_1);
    x_4=zeros(1,n_1);
    x_5=zeros(1,n_1);
    x_6=zeros(1,n_1);
    x_7=zeros(1,n_1);
    x_8=zeros(1,n_1);
    x_9=zeros(1,n_1);
    x_10=zeros(1,n_1);
    x_11=zeros(1,n_1);
    x_12=zeros(1,n_1);
    x_13=zeros(1,n_1);
    x_14=zeros(1,n_1);
    x_15=zeros(1,n_1);
    x_16=zeros(1,n_1);
    x_17=zeros(1,n_1);
    x_18=zeros(1,n_1);
    x_19=zeros(1,n_1);

%
    apn = zeros(10,19);
    sham = zeros(10,19);
    perm = zeros(10,19);
    ren = zeros(10,19);

% coarse to fine procedure

for i2=1:no_of_modes
    x_1 = x_1+imf_ch1(10+1-i2,:);apn(i2,1) =  ApEn(x_1,2,0.001);
    sham(i2,1) = SampEn(x_1,2,0.2);perm(i2,1) =  PermEn(x_1,2);ren(i2,1)= func_FE_RenyiEn(x_1,6250,2);

    x_2 = x_2+imf_ch2(10+1-i2,:);apn(i2,2) =  ApEn(x_2,2,0.001);
    sham(i2,2) = SampEn(x_2,2,0.2);perm(i2,2) =  PermEn(x_2,2);ren(i2,2)= func_FE_RenyiEn(x_2,6250,2);
    
    x_3 = x_3+imf_ch3(10+1-i2,:);apn(i2,3) =  ApEn(x_3,2,0.001);
    sham(i2,3) = SampEn(x_3,2,0.2);perm(i2,3) =  PermEn(x_3,2);ren(i2,3)= func_FE_RenyiEn(x_3,6250,2);
    
    x_4 = x_4+imf_ch4(10+1-i2,:);apn(i2,4) =  ApEn(x_4,2,0.001);
    sham(i2,4) = SampEn(x_4,2,0.2);perm(i2,4) =  PermEn(x_4,2);ren(i2,4)= func_FE_RenyiEn(x_4,6250,2);
    
    x_5 = x_5+imf_ch5(10+1-i2,:);apn(i2,5) =  ApEn(x_5,2,0.001);
    sham(i2,5) = SampEn(x_5,2,0.2);perm(i2,5) =  PermEn(x_5,2);ren(i2,5)= func_FE_RenyiEn(x_5,6250,2);
    
    x_6 = x_6+imf_ch6(10+1-i2,:);apn(i2,6) =  ApEn(x_6,2,0.001);
    sham(i2,6) = SampEn(x_6,2,0.2);perm(i2,6) =  PermEn(x_6,2);ren(i2,6)= func_FE_RenyiEn(x_6,6250,2);
    
    x_7 = x_7+imf_ch7(10+1-i2,:);apn(i2,7) =  ApEn(x_7,2,0.001);
    sham(i2,7) = SampEn(x_7,2,0.2);perm(i2,7) =  PermEn(x_7,2);ren(i2,7)= func_FE_RenyiEn(x_7,6250,2);
    
    x_8 = x_8+imf_ch8(10+1-i2,:);apn(i2,8) =  ApEn(x_8,2,0.001);
    sham(i2,8) = SampEn(x_8,2,0.2);perm(i2,8) =  PermEn(x_8,2);ren(i2,8)= func_FE_RenyiEn(x_8,6250,2);
    

    x_9 = x_9+imf_ch9(10+1-i2,:);apn(i2,9) =  ApEn(x_9,2,0.001);
    sham(i2,9) = SampEn(x_9,2,0.2);perm(i2,9) =  PermEn(x_9,2);ren(i2,9)= func_FE_RenyiEn(x_9,6250,2);
    
    x_10 = x_10+imf_ch10(10+1-i2,:);apn(i2,10) =  ApEn(x_10,2,0.001);
    sham(i2,10) = SampEn(x_10,2,0.2);perm(i2,10) =  PermEn(x_10,2);ren(i2,10)= func_FE_RenyiEn(x_10,6250,2);
    
    x_11 = x_11+imf_ch11(10+1-i2,:);apn(i2,11) =  ApEn(x_11,2,0.001);
    sham(i2,11) = SampEn(x_11,2,0.2);perm(i2,11) =  PermEn(x_11,2);ren(i2,11)= func_FE_RenyiEn(x_11,6250,2);
    
    x_12 = x_12+imf_ch12(10+1-i2,:);apn(i2,12) =  ApEn(x_12,2,0.001);
    sham(i2,12) = SampEn(x_12,2,0.2);perm(i2,12) =  PermEn(x_12,2);ren(i2,12)= func_FE_RenyiEn(x_12,6250,2);
    

    x_13 = x_13+imf_ch13(10+1-i2,:);apn(i2,13) =  ApEn(x_13,2,0.001);
    sham(i2,13) = SampEn(x_13,2,0.2);perm(i2,13) =  PermEn(x_13,2);ren(i2,13)= func_FE_RenyiEn(x_13,6250,2);
    
    x_14 = x_14+imf_ch14(10+1-i2,:);apn(i2,14) =  ApEn(x_14,2,0.001);
    sham(i2,14) = SampEn(x_14,2,0.2);perm(i2,14) =  PermEn(x_14,2);ren(i2,14)= func_FE_RenyiEn(x_14,6250,2);
    
    x_15 = x_15+imf_ch15(10+1-i2,:);apn(i2,15) =  ApEn(x_15,2,0.001);
    sham(i2,15) = SampEn(x_15,2,0.2);perm(i2,15) =  PermEn(x_15,2);ren(i2,15)= func_FE_RenyiEn(x_15,6250,2);
    
    x_16 = x_16+imf_ch16(10+1-i2,:);apn(i2,16) =  ApEn(x_16,2,0.001);
    sham(i2,16) = SampEn(x_16,2,0.2);perm(i2,16) =  PermEn(x_16,2);ren(i2,16)= func_FE_RenyiEn(x_16,6250,2);
    

    x_17 = x_17+imf_ch17(10+1-i2,:);apn(i2,17) =  ApEn(x_17,2,0.001);
    sham(i2,17) = SampEn(x_17,2,0.2);perm(i2,17) =  PermEn(x_17,2);ren(i2,17)= func_FE_RenyiEn(x_17,6250,2);
    
    x_18 = x_18+imf_ch18(10+1-i2,:);apn(i2,18) =  ApEn(x_18,2,0.001);
    sham(i2,18) = SampEn(x_18,2,0.2);perm(i2,18) =  PermEn(x_18,2);ren(i2,18)= func_FE_RenyiEn(x_18,6250,2);
    
    x_19 = x_19+imf_ch19(10+1-i2,:);apn(i2,19) =  ApEn(x_19,2,0.001);
    sham(i2,19) = SampEn(x_19,2,0.2);perm(i2,19) =  PermEn(x_19,2);ren(i2,19)= func_FE_RenyiEn(x_19,6250,2);

    
end

  
    approx_sz{k,1} = apn;
    permute_sz{k,1} = perm;
    sample_sz{k,1} = sham;
    renyi_sz{k,1} = ren;

    cd("C:\Users\DEEP RANJAN\Desktop\multiscale_entropy\calculated_entropy\")
    
   
    save('approx_sz.mat','approx_sz');
    save('permute_sz.mat','permute_sz');
    save('sample_sz.mat','sample_sz');
    save('renyi_sz.mat','renyi_sz');
    toc
    clearvars -except k approx_sz permute_sz  sample_sz renyi_sz no_of_modes
end
%% check entropy time for individual
clc

tic
e2 = ApEn(x_1,2,0.001);
toc
tic
e3 = SampEn(x_1,2,0.2);
toc
tic
e4 = PermEn(x_1,2);
toc
tic
e5 = renyi_entro(x_1,2);
toc
%%
writematrix(cell2mat(sample_healthy),'sample_healthy.csv')
writematrix(cell2mat(approx_healthy),'approx_healthy.csv')
writematrix(cell2mat(permute_healthy),'permute_healthy.csv')
writematrix(cell2mat(renyi_healthy),'renyi_healthy.csv')

