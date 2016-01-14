function [ KMX ] = KMX_CORRE( ASTMD86,SG )
%KMX_CORRE��ͨ��ASTMD86��SG�������ȵ��ʵĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
Tb=(MeABP-32)*5/9+273.15;%���¶ȵ�λ��Fת��ΪK
T=25+273.15;
KMX=10^(-2)*(0.11594*Tb^0.7534*SG^0.5478-2.2989*Tb^0.2983*SG^0.0094)*(1.8*T-460)/300+2.2989*10^(-2)*Tb^0.2983*SG^0.0094;

end

