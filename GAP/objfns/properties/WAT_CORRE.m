function [ WAT ] = WAT_CORRE( ASTMD86,SG )
%KW_CORRE��ͨ��ASTMD86��SG������Watson K�ĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
WAT=(MeABP+459.67)^(1/3)/SG;%�˴�MeABP+459.67����Ϊ��F��λת��ΪK
end

