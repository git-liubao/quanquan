function [ CLOUDPT ] = CLOUDPT_CORRE( ASTMD86,SG )
%CLOUDPT是通过ASTMD86和SG来计算CLOUD POINT的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F
MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为R


A=-7.41+5.49*(log((MeABP+459.67))/log(10))-0.712*((MeABP+459.67))^0.315-0.133*SG;
CLOUDPT=10^A/1.8-273.15;%单位为C
end

