%% load healthy entropies
clc
clear all
cd("C:\Users\HP\Desktop\harit\multiscale_entropy\calculated_entropy\")
shannon_healthy = load('shannon_healthy.mat').shannon_healthy;
approx_healthy = load('approx_healthy.mat').approx_healthy;
permute_healthy = load('permute_healthy.mat').permute_healthy;
sample_healthy = load('sample_healthy.mat').sample_healthy;
renyi_healthy = load('renyi_healthy.mat').renyi_healthy;
%% load sz entropies
shannon_sz = load('shannon_sz.mat').shannon_sz;
approx_sz = load('approx_sz.mat').approx_sz;
permute_sz = load('permute_sz.mat').permute_sz;
sample_sz = load('sample_sz.mat').sample_sz;
renyi_sz = load('renyi_sz.mat').renyi_sz;

%% training_set
tTrain = zeros(2,916);
healthy = sample_healthy;
sz = sample_sz;
j=1;
for i=1:416
    xTrainImages{1,j}=healthy{i,1};
    tTrain(1,j)=1;
    tTrain(2,j)=0;
    j = j+1;

    xTrainImages{1,j}=sz{i,1};
    tTrain(1,j)=0;
    tTrain(2,j)=1;
    j=j+1;
end

for i=517:600
    xTrainImages{1,j}=sz{i,1};
    tTrain(1,j)=0;
    tTrain(2,j)=1;
    j=j+1;
end

%%
tTest = zeros(2,226);
k =1;
for i=417:516
    xTestImages{1,k}=healthy{i,1};
    tTest(1,k)=1;
    tTest(2,k)=0;
    k=k+1;

    xTestImages{1,k}=sz{i,1};
    tTest(1,k)=0;
    tTest(2,k)=1;
    k=k+1;
end

for i=601:626
    xTestImages{1,k}=sz{i,1};
    tTest(1,k)=0;
    tTest(2,k)=1;
    k=k+1;
end