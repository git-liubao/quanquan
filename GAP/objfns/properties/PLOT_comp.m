function  PLOT_comp
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
load('paras.mat');
xm=[0.2802	0.3736	0	0.187	0.1594];

 x  = MTHS_by_gammafeat( nn,aa,bb,xm);
 xx=[1 2 3 4 5 6 7 8]
 nn
 aa
 bb
 x
 molefrac=[0	0	0	0	0;
0.038	0.034	0	0.0042	0;
0.044	0.067	0	0.0321	0.008;
0.032	0.062	0	0.058	0.0322;
0.0636	0.0652	0	0.0471	0.0471;
0.0509	0.0832	0	0.0356	0.0421;
0.0297	0.0622	0	0.006	0.027;
0.022	0	0	0.004	0.003];
b0=[0	0	0	0	0
4.31	3.47	0	0.53	0
2.5	8.21	0	3.34	1.08
1.12	7.21	0	5.85	3.22
3.35	10.95	0	4.81	4.46
0.18	13.09	0	3.86	4.63
0.06	7.17	0	0.37	1.2
0.02	4.31	0	0.11	1.33];
b=b0./100;
 b1=b(:,1);
 b2=b(:,2);
 b4=b(:,4);
b5=b(:,5);

m1=molefrac(:,1);
m2=molefrac(:,2);
m4=molefrac(:,4);
m5=molefrac(:,5);


 x1=x(:,1);
 x2=x(:,2);
 x4=x(:,4);
x5=x(:,5);

end

