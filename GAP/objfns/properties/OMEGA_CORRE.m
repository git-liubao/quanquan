function [ OMEGA ] = OMEGA_CORRE( ASTMD86,SG )
%OMEGA_CORRE��ͨ��ASTMD86��SG������ƫ�����ӵĺ���
%   ASTMD86��ҪT10 T30 T50 T70 T90���������,��λ��ҪF

WAT=WAT_CORRE( ASTMD86,SG );
MeABP=MeABP_CORRE( ASTMD86 );%��λΪF
MeABPR=MeABP+459.67;%%��λΪR
TC= TC_CORRE( ASTMD86,SG );%��λΪR
TCF=TC-459.67;%��TC��λת��ΪF��
reduced_temp=0.7;
T=reduced_temp*TC;%T��λΪR
MeABPRa=MeABPR;%����tb'=tb.��MeABPR����tb����MeABPRa����tb'��
X=(MeABPRa/T-0.0002867*MeABPRa)/(748.1-0.2145*MeABPRa);%�ο�����28��P394

if (X>0.0022)
    a=(3000.538*X-6.761560)/(43*X-0.987672);
else 
    if (X>=0.0013&&X<=0.0022)
        a=(2663.129*X-5.994296)/(95.76*X-0.972546);
    else
        if (X<0.0013)
            a=(2770.085*X-6.412631)/(36*X-0.989679);
        end
    end
end
P=10^a;
f=(MeABPR-659.7)/200;
aT=2.5*f*(WAT-12)*(log(P/760)/log(10));%�����t����aT�����t����t=tb-tb';
MeABPRa=MeABPR-aT;
X=(MeABPRa/T-0.0002867*MeABPRa)/(748.1-0.2145*MeABPRa);%�ο�����28��P394
if (X>0.0022)
    a=(3000.538*X-6.761560)/(43*X-0.987672);
else 
    if (X>=0.0013&&X<=0.0022)
        a=(2663.129*X-5.994296)/(95.76*X-0.972546);
    else
        if (X<0.0013)
            a=(2770.085*X-6.412631)/(36*X-0.989679);
        end
    end
end
P=10^a;
PC= PC_CORRE( ASTMD86,SG );
p1=P/PC;
OMEGA=-(log(P*14.7/(760*PC))/log(10))-1;
end

