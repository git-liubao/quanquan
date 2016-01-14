function obj=SE_compute
%SE为标准差，是计算所得到的摩尔组成与已知摩尔组成的标准差。
%   此处显示详细说明

addpath(genpath('.'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%此处选择数据，索引为组的索引
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

index    = 1;
load('./data/data.mat');
ASTMD86C = ASTMD86Cs{index};
SG       = SGs{index};
xm       = xms{index};
molefrac = molefracs{index};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('./results_paras/paras.mat');
x        = MTHS_by_gammafeat( nn,aa,bb,xm)
xlswrite('./xlsfiles/wuyueshu111.xls', x, 'sheet1');
obj=(sum(sum(((x-molefrac).^2)))/37)^0.5;
rmpath(genpath('.'));
end

