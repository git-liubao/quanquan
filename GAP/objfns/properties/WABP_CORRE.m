function [ WABP] = WABP_CORRE( ASTMD86 )
%用来计算已知ASTMD86的情况下质量平均沸点的计算；
%   ASTMD86为T10 T30 T50 T70 T90 这5个数据。单位为F
VABP1=VABP_CORRE( ASTMD86 );%单位为F
SL=(ASTMD86(1,5)-ASTMD86(1,1))/(90-10)%计算斜率
A=(-3.062123)-0.01829*(VABP1-32)^0.6667+4.45818*(SL)^0.25
WABP=VABP1+exp(A)%单位为F
end

