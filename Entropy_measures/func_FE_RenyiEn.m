function RenyiEn = func_FE_RenyiEn(signal,n,alpha)

% This function calculates Renyi Entropy based on the following algorithm 
%------------------------------------------------------------------------------------
% - The number of n intervals of the signal is selected.
% - The width of each interval is calculated from the formula (xmax-xmin)/n.
% - The number of points of the signal that are placed in each interval is counted: Ni i = 1: n
% - Probability pi = Ni / N is calculated.
% - Shannon entropy is calculated using the formula H=(1/(1-alpha))log2(sum(pi^alpha))  i=1->n.
%------------------------------------------------------------------------------------
%                                                                        
%   Input parameters:                                                     
%       - signal:       Input signal must be a vector with dimension N    
%       - n:            number of devision                            
%       - alpha:        the order of the entropy measure                                                                  
%   Output:                                                   
%       - RenyiEn:        Renyi entropy value 
%   Author: Golnaz Baghdadi 
% -------------------------------------------------------------------------------

    if nargin < 2
        n=3;
    end
    [s1,s2]=size(signal);
    if (s1>1) && (s2>1)
        error('input signal must be a vector');
    end
    if s1>s2
        signal=signal';
    end
    N=length(signal);

    L= (max(signal)-min(signal))/n; % width of amplitude bins
    for i=1:n
        p(i)=(length(find((((i-1)*L)+min(signal))<=signal & signal<((i*L)+min(signal)))))/N;
    end
    RenyiEn=log2(sum(p.^alpha))/(1-alpha);
    