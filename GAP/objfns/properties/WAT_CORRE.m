function [ WAT ] = WAT_CORRE( ASTMD86,SG )
%KW_CORRE是通过ASTMD86和SG来计算Watson K的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F
MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为F
WAT=(MeABP+459.67)^(1/3)/SG;%此处MeABP+459.67是因为将F单位转换为K
end

