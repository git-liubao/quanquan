function [ SIGMAMX ] = SIGMAMX_CORRE( ASTMD86,SG )
%KMX_CORRE��ͨ��ASTMD86��SG��������������ĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF

TC= TC_CORRE( ASTMD86,SG );%��λR��
T=(25+273.15)*1.8;%��25���϶�ת��ΪR��
WAT=WAT_CORRE( ASTMD86,SG );
SIGMAMX=(673.7*((TC-T)/TC)^(1.232))/WAT;
end

