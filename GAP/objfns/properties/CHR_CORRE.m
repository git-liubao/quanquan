function [ CHR ] = CHR_CORRE( ASTMD86,SG )
%CHR_CORRE��ͨ��ASTMD86��SG������̼��ȵĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF
MeABP=MeABP_CORRE( ASTMD86 );%������¶ȵ�λΪF
MeABPK=(MeABP-32)*5/9+273.15;%���¶ȵ�λ��Fת��ΪK
CHR=3.4707*(exp(1.485*10^(-2)*MeABPK+16.94*SG-1.2492*10^(-2)*MeABPK*SG))*MeABPK^(-2.725)*SG^(-6.798);
%�˴���MeABPK�ĵ�λ�Ѿ���K
end

