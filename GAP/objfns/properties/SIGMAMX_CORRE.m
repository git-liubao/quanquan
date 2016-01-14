function [ SIGMAMX ] = SIGMAMX_CORRE( ASTMD86,SG )
%KMX_CORRE是通过ASTMD86和SG来计算表明张力的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据，单位为F

TC= TC_CORRE( ASTMD86,SG );%单位R；
T=(25+273.15)*1.8;%将25摄氏度转换为R；
WAT=WAT_CORRE( ASTMD86,SG );
SIGMAMX=(673.7*((TC-T)/TC)^(1.232))/WAT;
end

