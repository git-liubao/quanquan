function [ VC ] = VC_CORRE( ASTMD86,SG )
%VC_CORRE��ͨ��ASTMD86��SG�������ٽ�����ĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
MeABPK=(MeABP-32)*5/9+273.15;%���¶ȵ�λ��Fת��ΪK
a=6.049*10^(-2);
b=-2.6422*10^(-3);
c=-0.26404;
d=1.971*10^(-3);
e=0.7506;
f=-1.2028;
VC=a*exp(b*MeABPK+c*SG+d*MeABPK*SG)*MeABPK^(e)*SG^(f);%VC��λcm3/g
end

