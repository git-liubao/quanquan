function [ PC ] = PC_CORRE( ASTMD86,SG )
%PC_CORRE是通过ASTMD86和SG来计算临界压力的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据,单位需要F
MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为F
PC=6.162*10^6*exp((-4.725)*10^(-3)*(MeABP+459.67)-4.8014*SG+3.1939*10^(-3)*(MeABP+459.67)*SG)*(MeABP+459.67)^(-0.4844)*SG^(4.0846);
%计算出PC单位为psi
end

