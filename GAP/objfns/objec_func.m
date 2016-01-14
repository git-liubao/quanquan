function [ obj ] = objec_func( C , index)
%UNTITLED ��Ҫ�����ASTMD86�����ݵ�λΪF
%   nn aa bb����һ��5�еľ���

Cons = C(1:5);%Լ����ֵ139.53-163.8
pnc = C(6:10);%nn/Cons�ı���0-1
pab = C(11:15);%aa-1/bb�ı���0.001-1

nn = Cons.*pnc;
ab=Cons-nn;
bb = sqrt(ab./pab);
aa = pab.*bb+1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�˴�ѡ�����ݣ�����Ϊ�������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('./data/data.mat');
ASTMD86C = ASTMD86Cs{index};
SG       = SGs{index};
xm       = xms{index};
TBP      =TBPCs{index};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ASTMD86C=[86.3 111.6 128.5 145 164.1];%�¶�ΪC
% SG=0.741;
% xm=[0.2802	0.3736	0	0.187	0.1594];

ASTMD86=ASTMD86C.*1.8+32;%�¶�ΪF;
molefrac=MTHS_by_gammafeat( nn,aa,bb,xm );%��gamma�ֲ��õ�����Ħ����ɡ�
CHRATIO_MSD=CHR_CORRE( ASTMD86,SG );%�޵�λ
CPMX_MSD=CPMX_CORRE( ASTMD86,SG );%kJ/kg*K��liquid heat capacity
MABP_MSD=MABP_CORRE( ASTMD86 );%��λF��Ħ��ƽ���е�
PCMX_MSD=PC_CORRE( ASTMD86,SG );%��λΪPSI,�ٽ�ѹ��
RIDX_MSD=REFINDEX_CORRE( ASTMD86,SG );%�޵�λ���۹���
VABP_MSD=VABP_CORRE( ASTMD86 );%��λΪF,���ƽ���е�
VCMX_MSD=VC_CORRE( ASTMD86,SG );%��λΪcm3/g���ٽ����
WAT_MSD=WAT_CORRE( ASTMD86,SG );%WATSON K
ZCMX_MSD=ZC_CORRE( ASTMD86,SG );%�ٽ�ѹ������
SIGMAMX_MSD=SIGMAMX_CORRE( ASTMD86,SG );%��λdyn/cm,��������
KMX_MSD=KMX_CORRE( ASTMD86,SG );%��λW/m*K��thermal conductivity
MWMX_MSD=MW_CORRE( ASTMD86,SG );%ƽ����Է�������
TCMX_MSD=TC_CORRE( ASTMD86,SG );%��λΪR,�ٽ��¶�
ANILPT_MSD=ANILPT_CORRE( ASTMD86,SG );%��λΪR��������
HCOM_MSD=HCOM_CORRE( SG );%��λΪkJ/kg��ȼ����
CLOUDPT_MSD=CLOUDPT_CORRE( ASTMD86,SG );%��λΪC
OMEGA_MSD=OMEGA_CORRE( ASTMD86,SG );%ƫ������
CPIGMX_MSD= CPIGMX_CORRE( ASTMD86,SG );%��λΪkJ/kg*K
TBP1_MSD=TBP(1);%��λΪC
TBP2_MSD=TBP(2);%��λΪC
TBP3_MSD=TBP(3);%��λΪC
TBP4_MSD=TBP(4);%��λΪC
TBP5_MSD=TBP(5);%��λΪC
MSD=[CHRATIO_MSD CPMX_MSD MABP_MSD PCMX_MSD RIDX_MSD VABP_MSD VCMX_MSD WAT_MSD ZCMX_MSD...
    SIGMAMX_MSD KMX_MSD MWMX_MSD TCMX_MSD ANILPT_MSD HCOM_MSD CLOUDPT_MSD OMEGA_MSD CPIGMX_MSD TBP1_MSD TBP2_MSD TBP3_MSD TBP4_MSD TBP5_MSD];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CHRATIO_PRED=CHRATIO_MIX( molefrac );%�޵�λ
CPMX_PRED=CPMX_MIX( molefrac );%kJ/kg*K��liquid heat capacity
MABP_PRED=MABP_MIX( molefrac );%��λF��Ħ��ƽ���е�
PCMX_PRED=PC_MIX( molefrac );%��λΪPSI,�ٽ�ѹ��
RIDS_PRED= REFINDEX_MIX( molefrac );%�޵�λ���۹���
VABP_PRED=VABP_MIX( molefrac );%��λΪF,���ƽ���е�
VCMX_PRED=VC_MIX( molefrac);%��λΪcm3/g���ٽ����
WAT_PRED=WAT_MIX( molefrac );%WATSON K
ZCMX_PRED=ZC_MIX( molefrac );%�ٽ�ѹ������
SIGMAMX_PRED=SIGMAMX_MIX( molefrac );%%��λdyn/cm,��������
KMX_PRED=KMX_MIX( molefrac );%��λW/m*K��thermal conductivity
MWMX_PRED=MW_MIX( molefrac );%ƽ����Է�������
TCMX_PRED=TC_MIX( molefrac );%��λΪR,�ٽ��¶�
ANILPT_PRED=ANILPT_MIX( molefrac );%��λΪR��������
HCOM_PRED=HCOM_MIX( molefrac );%��λΪkJ/kg��ȼ����
CLOUDPT_PRED= CLOUDPT_MIX( molefrac );%��λΪC
OMEGA_PRED=OMEGA_MIX( molefrac );%ƫ������
CPIGMX_PRED=CPIGMX_MIX( molefrac );%��λΪkJ/kg*K
TBP_PRED=TBP_compute( molefrac );%��λΪC��
TBP1_PRED=TBP_PRED(1);
TBP2_PRED=TBP_PRED(2);
TBP3_PRED=TBP_PRED(3);
TBP4_PRED=TBP_PRED(4);
TBP5_PRED=TBP_PRED(5);
PRED=[CHRATIO_PRED CPMX_PRED MABP_PRED PCMX_PRED RIDS_PRED VABP_PRED VCMX_PRED WAT_PRED ZCMX_PRED...
    SIGMAMX_PRED KMX_PRED MWMX_PRED TCMX_PRED ANILPT_PRED HCOM_PRED CLOUDPT_PRED OMEGA_PRED CPIGMX_PRED TBP1_PRED TBP2_PRED TBP3_PRED TBP4_PRED TBP5_PRED];
[row,column]=size(PRED);

sel =[1  3  5 6  8 9 10 11 12 13 14 15 16  18 19 20 21 22 23];

w=ones(size(sel));
%w=[0.021278772	0.002902019	0.116144362	0.077987346	0.005449423	0.389714328	0.049943056	0.007970409	0.005769885	0.011853379	0.181241912	0.012339361	0.025060354	0.002393568	0.089951827];


%w=[0.008718518	0.002598014	0.00051897	0.130258896	0.002179386	0.776916847	0.015715462	0.012114065	0.022218541	0.004242971	0.010810414	0.007862513	0.001298925	0.000508227	0.004038251];

%w=[0.014340164	0.00013976	0.000144945	0.032348463	0.000251105	0.102367456	0.662125986	0.000597815	0.000453522	0.000673208	0.001295437	0.001016202	0.000198024	0.000283361	0.183764551];
%w1(1,3)=0.1;
%w1(1,8)=0.1;
%w1(1,9)=0;
%w1(1,10)=0.1;
%w1(1,12)=0.1 ;
%w1(1,13)=0.2;
%w1(1,14)=0.1;
%w=w1./sum(sum(w1));
d=(MSD(sel)-PRED(sel))./MSD(sel);
%r=([-0.0061    0.0790   -0.0042   -0.0022    0.0194 0.0003   -0.0079    0.0408    0.0623    0.0179 -0.0012   -0.0249   -0.0101    0.0312    0.0104]);
obj1=sum(sum((((d)).*w).^2));
obj2 = 0.0015*sum(((abs(Cons-150)).^0.2));
obj3 = 0.01*sum(((abs(aa-10)).^0.3));
obj4 = 0.01*sum(((abs(bb-50)).^0.2));
obj=obj1+obj2+obj3+obj4;
%obj=obj1;
end

