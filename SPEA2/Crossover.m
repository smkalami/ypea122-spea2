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

function [y1, y2] = Crossover(x1, x2, params)

    gamma = params.gamma;
    VarMin = params.VarMin;
    VarMax = params.VarMax;
    
    alpha = unifrnd(-gamma, 1+gamma, size(x1));
    
    y1 = alpha.*x1+(1-alpha).*x2;
    y2 = alpha.*x2+(1-alpha).*x1;
    
    y1 = min(max(y1, VarMin), VarMax);
    y2 = min(max(y2, VarMin), VarMax);

end