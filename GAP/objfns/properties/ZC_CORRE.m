function [ ZC ] = ZC_CORRE( ASTMD86,SG )
%ZC_CORRE��ͨ��ASTMD86��SG�������ٽ�ѹ�����ӵĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90��������ݣ���λΪF
PC1= PC_CORRE( ASTMD86,SG );%PC��λpsi
TC1= TC_CORRE( ASTMD86,SG );%TC��λR
VC1= VC_CORRE( ASTMD86,SG );%VC��λcm3/g
MW=MW_CORRE( ASTMD86,SG );
PC=PC1*6895;%��PC��λ��psiת��ΪPa
TC=TC1/1.8;%��TC��λ��Rת��ΪK
VC=VC1*10^(-6)*MW;%��VC��λ��cm3/gת��Ϊm3/mol
ZC=PC*VC/(8.314*TC);
end

