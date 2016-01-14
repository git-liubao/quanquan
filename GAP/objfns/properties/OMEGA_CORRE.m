function [ OMEGA ] = OMEGA_CORRE( ASTMD86,SG )
%OMEGA_CORRE是通过ASTMD86和SG来计算偏心因子的函数
%   ASTMD86需要T10 T30 T50 T70 T90这五个数据,单位需要F

WAT=WAT_CORRE( ASTMD86,SG );
MeABP=MeABP_CORRE( ASTMD86 );%单位为F
MeABPR=MeABP+459.67;%%单位为R
TC= TC_CORRE( ASTMD86,SG );%单位为R
TCF=TC-459.67;%将TC单位转换为F；
reduced_temp=0.7;
T=reduced_temp*TC;%T单位为R
MeABPRa=MeABPR;%假设tb'=tb.以MeABPR代表tb，以MeABPRa代表tb'；
X=(MeABPRa/T-0.0002867*MeABPRa)/(748.1-0.2145*MeABPRa);%参考文献28中P394

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
aT=2.5*f*(WAT-12)*(log(P/760)/log(10));%计算△t，以aT代表△t，△t=tb-tb';
MeABPRa=MeABPR-aT;
X=(MeABPRa/T-0.0002867*MeABPRa)/(748.1-0.2145*MeABPRa);%参考文献28中P394
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

