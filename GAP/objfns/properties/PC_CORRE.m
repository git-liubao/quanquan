function [ PC ] = PC_CORRE( ASTMD86,SG )
%PC_CORRE��ͨ��ASTMD86��SG�������ٽ�ѹ���ĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90���������,��λ��ҪF
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
PC=6.162*10^6*exp((-4.725)*10^(-3)*(MeABP+459.67)-4.8014*SG+3.1939*10^(-3)*(MeABP+459.67)*SG)*(MeABP+459.67)^(-0.4844)*SG^(4.0846);
%�����PC��λΪpsi
end

