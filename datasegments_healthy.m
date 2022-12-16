%%
clc
clear
cd("C:\Users\HP\Desktop\harit\multiscale_entropy\original_data")

fs=250;
segLen=25;
k=1;
for j=1:14
if(j<10)    
subject=strcat('h0',num2str(j),'.edf');
else
subject=strcat('h',num2str(j),'.edf');
end
[hdr, full_eeg_cont] = edfread((subject));
SegNum=size(full_eeg_cont,2)/(fs*segLen);

for i=1:SegNum
Class_Helthy{k,1}=full_eeg_cont(:,segLen*fs*(i-1)+1:segLen*fs*i);
k=k+1;
end

end

%%
clc
cd("C:\Users\HP\Desktop\harit\multiscale_entropy\decomposition\data_healthy")
no_of_modes = 10;
dur=segLen;
for i=599:k-1
x=Class_Helthy{i,1};
tic
clear u u_hat omega u1
[u, u_hat, omega] = MVMD_ver1(x, 1000, 0, no_of_modes, 0, 0, 1e-7);
toc
FileName=strcat('u_healthy',num2str(i),'.mat')
save(FileName,'u')
clear x FileName
end


