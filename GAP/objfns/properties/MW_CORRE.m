function [ MW ] = MW_CORRE( ASTMD86,SG )
%MW_CORRE������ASTMD86��������������������ʯ����ֵ���Է��������ķ�����
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF

MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
MW=20.486*(exp(1.165*10^(-4)*(MeABP+459.67)-7.78712*SG+1.1582*10^(-3)*(MeABP+459.67)*SG))*(MeABP+459.67)^1.26007*SG^4.98308;
%MeABP+459.67����Ϊ��Tb�¶ȵ�λת��ΪR��
end

