%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YOEA122
% Project Title: Strength Pareto Evolutionary Algorithm 2 (SPEA2)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Strength Pareto Evolutionary Algorithm 2 (SPEA2) in MATLAB (URL: https://yarpiz.com/74/ypea122-spea2), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function p = BinaryTournamentSelection(pop, f)

    n = numel(pop);
    
    I = randsample(n, 2);
    
    i1 = I(1);
    i2 = I(2);
    
    if f(i1)<f(i2)
        p = pop(i1);
    else
        p = pop(i2);
    end

end