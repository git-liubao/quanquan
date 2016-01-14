function [ CABP ] = CABP_CORRE( ASTMD86 )
%����������֪ASTMD86�������Cƽ���е�ļ��㣻
%   ASTMD86ΪT10 T30 T50 T70 T90 ��5�����ݡ���λΪF
VABP1=VABP_CORRE( ASTMD86 );%��λΪF
SL=(ASTMD86(1,5)-ASTMD86(1,1))/(90-10)%����б��
A=(-0.23589)-0.06906*(VABP1-32)^0.45+1.8858*(SL)^0.45
CABP=VABP1-exp(A)%��λΪF


end

