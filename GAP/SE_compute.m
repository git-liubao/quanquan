function obj=SE_compute
%SEΪ��׼��Ǽ������õ���Ħ���������֪Ħ����ɵı�׼�
%   �˴���ʾ��ϸ˵��

addpath(genpath('.'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�˴�ѡ�����ݣ�����Ϊ�������
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

