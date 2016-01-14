function [ PCm ] = PC_MIX( molefrac )
%计算整体性质，临界压力,TC矩阵单位为R，PC矩阵单位为psi，VC矩阵单位为cuft/lbmol。
%   molefrac表示摩尔分数矩阵，TC,VC，PC分别表示临界温度、临界体积和临界压力矩阵，wi为偏心因子矩阵
VC=[3.20369267 0 0 0 0;
4.08470816	4.148782014	3.860449673	0	0;
5.013779036	4.901649792	4.699817154	4.164800477	0;
5.942849912	5.894794522	5.574425255	4.933686719	4.100726624;
6.855902324	6.471459203	6.439422276	5.926831448	5.061834426;
7.7849732	7.624788566	7.432567006	6.727754617	6.006923765;
8.826173319	8.665988685	8.393674808	7.432567006	6.935994641;
9.883391902	9.338764147	9.35478261	8.457748661	7.720899346;
10.97264741	10.33991811	10.52413044	8.5	8.649970222;
12.09393985	11.72551519 0 0 0];%单位为cuft/lbmol
TC=[665.694 0 0 0 0;
765.216	734.04	755.1	0	0;
845.46	828.72	836.64	921.06	0;
913.68	908.28	907.2	996.84	1011.69;
972.36	963.36	967.32	1017.27	1065.15;
1023.66	1011.06	1020.42	1067.4	1110.6;
1070.28	1049.166	1067.58	1128.6	1147.14;
1111.86	1098	1109.88	1155.6	1191.6;
1150.2	1108.3824	1148.04	1188.18	1237.14;
1184.4	1174.14 0 0 0];%单位为R
PC=[616.1203099 0 0 0 0;
550.5632524	527.9373653	583.0517056	0	0;
488.7771762	490.2275535	516.3343463	654.1201972	0;
438.7391566	452.5177417	465.5711381	591.7539699	709.9597262;
397.4034014	407.556043	423.5101941	499.6622584	595.8150266;
361.1439669	368.3958538	386.2354955	440.9147227	513.5786293;
332.1364194	335.0371742	352.1516273	413.3575525	453.5330059;
306.0296266	307.480004	322.418891	372.746986	426.4109489;
282.8235886	269.665765	296.4571359	310.0848818	388.4110616;
263.9686827	267.8847016 0 0 0];%单位为psi
wi=[0.152291 0 0 0 0;
0.200164	0.183521	0.184495	0	0;
0.251506	0.227875	0.237218	0.194874	0;
0.301261	0.27022	0.285121	0.208054	0.2103;
0.349469	0.32042	0.343194	0.266243	0.264012;
0.399552	0.370655	0.392149	0.302996	0.326485;
0.44346	0.460207	0.17629	0.329509	0.398548;
0.492328	0.472342	0.480456	0.401599	0.407014;
0.530316	0.50235	0.522466	0.476	0.4638
0.576385	0.569 0 0 0];
Tpc=equation345(TC,molefrac);
Ppc=equation345(PC,molefrac);
TCm=TC_MIX( molefrac );
wisum=equation345(wi,molefrac);
PCm=(Ppc+Ppc*(5.808+4.93*(wisum))*((TCm-Tpc)/Tpc));

end

