clc;
clear all;
A = readtable("C2F-KRUSKAL.xlsx");
A = sortrows(A,'NO_OfFeatures','ascend');
%%
figure;
hold on
a1=plot(A.NO_OfFeatures, A.SampleEntropy,LineWidth=2,Marker='diamond',MarkerSize=10);
a2=plot(A.NO_OfFeatures,A.PermutationEntropy,LineWidth=2,Marker='o',MarkerSize=10);
a3=plot(A.NO_OfFeatures,A.ApproximateEntropy,LineWidth=2,Marker='*',MarkerSize=10);
a4= plot(A.NO_OfFeatures,A.RenyiEntropy,LineWidth=2,Marker='square',MarkerSize=10);
title('Coarse To Fine Feature Selection Results with Kruskal Wallis Test');
xlabel('No. of Features');
ylabel('Accuracy(%)');
xticks([A.NO_OfFeatures]);
legend([a1,a2,a3,a4],{'Sample Entropy','Permutation Entropy','Approximation Entropy','Renyi Entropy'});