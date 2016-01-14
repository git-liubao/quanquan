function [ VABP ] = VABP_CORRE( ASTMD86 )
%用来计算已知ASTMD86的情况下体积平均沸点的计算；
%   ASTMD86为T10 T30 T50 T70 T90 这5个数据。单位为F
VABP=sum(sum(ASTMD86))/5;%单位为F

end

