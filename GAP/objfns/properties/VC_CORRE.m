function [ VC ] = VC_CORRE( ASTMD86,SG )
%VC_CORRE是通过ASTMD86和SG来计算临界体积的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F
MeABP=MeABP_CORRE( ASTMD86 );%计算出温度单位为F
MeABPK=(MeABP-32)*5/9+273.15;%将温度单位由F转化为K
a=6.049*10^(-2);
b=-2.6422*10^(-3);
c=-0.26404;
d=1.971*10^(-3);
e=0.7506;
f=-1.2028;
VC=a*exp(b*MeABPK+c*SG+d*MeABPK*SG)*MeABPK^(e)*SG^(f);%VC单位cm3/g
end

