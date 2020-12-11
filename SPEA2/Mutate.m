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

function y = Mutate(x, params)

    h = params.h;
    VarMin = params.VarMin;
    VarMax = params.VarMax;

    sigma = h*(VarMax-VarMin);
    
    y = x+sigma*randn(size(x));
    
    % y = x+sigma*unifrnd(-1, 1, size(x));
    
    y = min(max(y, VarMin), VarMax);

end