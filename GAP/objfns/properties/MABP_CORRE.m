function [ MABP ] = MABP_CORRE( ASTMD86 )
%����������֪ASTMD86�������Ħ��ƽ���е�ļ��㣻
%   ASTMD86ΪT10 T30 T50 T70 T90 ��5�����ݡ���λΪF
VABP1=VABP_CORRE( ASTMD86 );%��λΪF
SL=(ASTMD86(1,5)-ASTMD86(1,1))/(90-10);%����б��
A=(-0.56379)-0.00798*(VABP1-32)^0.6667+3.04729*(SL)^0.333;
MABP=VABP1-exp(A);%��λΪF
end

