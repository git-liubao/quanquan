function [ MeABP ] = MeABP_CORRE( ASTMD86 )
%����������֪ASTMD86�������MEANƽ���е�ļ��㣻
%   ASTMD86ΪT10 T30 T50 T70 T90 ��5�����ݡ���λΪF
VABP1=VABP_CORRE( ASTMD86 );%��λΪF
SL=(ASTMD86(1,5)-ASTMD86(1,1))/(90-10);%����б��
A=(-0.94402)-0.00865*(VABP1-32)^0.6667+2.99791*(SL)^0.333;
MeABP=VABP1-exp(A);%��λΪF
end

