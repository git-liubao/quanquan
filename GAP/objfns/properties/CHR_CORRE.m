function [ CHR ] = CHR_CORRE( ASTMD86,SG )
%CHR_CORRE是通过ASTMD86和SG来计算碳氢比的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F
MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为F
MeABPK=(MeABP-32)*5/9+273.15;%将温度单位由F转化为K
CHR=3.4707*(exp(1.485*10^(-2)*MeABPK+16.94*SG-1.2492*10^(-2)*MeABPK*SG))*MeABPK^(-2.725)*SG^(-6.798);
%此处的MeABPK的单位已经是K
end

