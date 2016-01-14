function [ WABP] = WABP_CORRE( ASTMD86 )
%����������֪ASTMD86�����������ƽ���е�ļ��㣻
%   ASTMD86ΪT10 T30 T50 T70 T90 ��5�����ݡ���λΪF
VABP1=VABP_CORRE( ASTMD86 );%��λΪF
SL=(ASTMD86(1,5)-ASTMD86(1,1))/(90-10)%����б��
A=(-3.062123)-0.01829*(VABP1-32)^0.6667+4.45818*(SL)^0.25
WABP=VABP1+exp(A)%��λΪF
end

