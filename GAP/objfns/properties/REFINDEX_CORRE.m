function [ n ] = REFINDEX_CORRE( ASTMD86,SG )
%REFINDEX_CORRE��ͨ��ASTMD86��SG�����������ʵĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
I=2.266*10^(-2)*exp(3.905*10^(-4)*(MeABP+459.67)+2.468*SG-5.704*10^(-4)*(MeABP+459.67)*SG)*(MeABP+459.67)^(0.0572)*SG^(-0.72);
%MeABP+459.67����Ϊ��Tb�¶ȵ�λת��ΪR��
n=((1+2*I)/(1-I))^(0.5);
end

