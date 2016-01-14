function [ MW ] = MW_CORRE( ASTMD86,SG )
%MW_CORRE是利用ASTMD86及比重两个条件来计算石油馏分的相对分子质量的方法；
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F

MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为F
MW=20.486*(exp(1.165*10^(-4)*(MeABP+459.67)-7.78712*SG+1.1582*10^(-3)*(MeABP+459.67)*SG))*(MeABP+459.67)^1.26007*SG^4.98308;
%MeABP+459.67是因为将Tb温度单位转换为R。
end

