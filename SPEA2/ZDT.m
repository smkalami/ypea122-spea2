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

function z = ZDT(x)

    n = numel(x);

    f1 = x(1);
    
    g = 1+9/(n-1)*sum(x(2:end));
    
    h = 1-sqrt(f1/g);
    
    f2 = g*h;
    
    z = [f1
       f2];

end