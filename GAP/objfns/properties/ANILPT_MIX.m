function [ AP ] = ANILPT_MIX( molefrac )
%APjisuan表示已知整体混合指数APBIB求整体苯胺点AP,输出苯胺点单位为R
%  molefrac为摩尔分数矩阵，MW为相对分子质量矩阵，dens为密度矩阵，ANILPT为苯胺点矩阵

MW=[44.0956 0 0 0 0;
58.12	58.12	56.1063	0	0;
72.15	72.15	70.1329	70.13	0;
86.17	86.17	84.1595	84.16	78.11;
100.2	100.2	98.1861	98.18	92.14;
114.2	114.2	112.2123	112.2	106.1;
128.2	128.2	126.239	126.2	120.1;
142.2	142.2	140.266	140.2	134.2;
156.3	156.3	154.292	154.2	148.2;
170.335 170.335 0 0 0];
dens=[493 1 1 1 1;
573.5	551	588	1	1;
626.2	620.1	643.625	745.7	1;
659.4	659.8	678.05	778.4	876.5;
683.7	688.296	698.02	768	866.7;
702.7	704.6	721.995	776.5	864.4;
719.2	713.497	729.8	802.3	861.5;
730.1	728.1	741.525	821.9	869.7;
740.2	742.2	752.714	796.5	883;
749.5 748.5 1 1 1];

APK=[407.012 1 1 1 1;
356.261	380.76	354.9074	1	1;
343.872	350.15	292.15	289.928	1;
341.761	342.428	295.928	304.15	256.2229;
342.872	343.65	341.7996	313.039	271.9414;
343.761	344.761	305.65	315.542	283.7892;
346.872	346.872	311.15	322.039	292.2869;
350.15	353.428	317.261	317.0698	296.6585;
361.483	345.8165	354.93	336.145	304.2817;
365.236 364.9792 1 1 1];


ANILPT=APK.*1.8-459.67;
APBI=API218(ANILPT);   %由公式2.18计算得到的每个组分的苯胺点混合指数


volfrac=volfrac_compute(molefrac);%由质量分数计算体积分数

APBIB=equation345(APBI,volfrac);%计算整体组合指数

AP1=273.823*(log(APBIB));
AP=AP1+459.67;

end

