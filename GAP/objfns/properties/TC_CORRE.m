function [ TC ] = TC_CORRE( ASTMD86,SG )
%TC_CORRE��ͨ��ASTMD86��SG�������ٽ��¶ȵĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90���������
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
TC=10.6443*(exp((-5.1747)*10^(-4)*(MeABP+459.67)-0.54444*SG+3.5995*10^(-4)*(MeABP+459.67)*SG))*(MeABP+459.67)^(0.81067)*SG^0.53691;
%TC��λR

end

