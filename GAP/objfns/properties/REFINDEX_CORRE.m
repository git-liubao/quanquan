function [ n ] = REFINDEX_CORRE( ASTMD86,SG )
%REFINDEX_CORRE是通过ASTMD86和SG来计算折射率的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F
MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为F
I=2.266*10^(-2)*exp(3.905*10^(-4)*(MeABP+459.67)+2.468*SG-5.704*10^(-4)*(MeABP+459.67)*SG)*(MeABP+459.67)^(0.0572)*SG^(-0.72);
%MeABP+459.67是因为将Tb温度单位转换为R。
n=((1+2*I)/(1-I))^(0.5);
end

