function [ VABP ] = VABP_CORRE( ASTMD86 )
%����������֪ASTMD86����������ƽ���е�ļ��㣻
%   ASTMD86ΪT10 T30 T50 T70 T90 ��5�����ݡ���λΪF
VABP=sum(sum(ASTMD86))/5;%��λΪF

end

