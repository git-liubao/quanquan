function [ output_args ] = getdata( input_args )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
ASTMD86Cs{1}=[58.6 82.5 96.5 121.1 155.3];
SGs{1}=0.718;
xms{1}=[0.3329 0.2675 0 0.3585 0.041];
massfrac1=[0	0	0	0	0;
2.54	0	0	0	0;
6.48	4.98	0	1.17	0;
4.93	5.37	0	13.35	0.41;
4.3	3.38	0	8.36	0.58;
3.49	3.5	0	5.46	1.24;
3.6	3.82	0	5.56	1.46;
3.43	3.12	0	0.79	0.6;
2.43	2.56	0	0.26	0.21;
0.47	0.88	0	0	0];
molefrac1=molefrac_compute( massfrac1 );
molefracs{1}=molefrac1;
TBPCs{1}=[32.3 70.2 92.7 125.7 165.4];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{2}=[59.9 83.8 100.1 118.8 141.4];
SGs{2}=0.717;
xms{2}=[0.3055 0.3312 0 0.3016 0.0616];
massfrac2=[0	0	0	0	0;
2.33	0.68	0	0	0;
5.29	5.22	0	0.54	0;
5.87	7.46	0	4.88	1.08;
5.6	5.79	0	10.11	1.63;
4.98	6.17	0	9.72	2.38;
3.25	4.88	0	5.89	1.1;
0.88	2.39	0	1	0;
0.08	0.33	0	0	0;
0	0	0	0	0];
molefrac2=molefrac_compute( massfrac2 );
molefracs{2}=molefrac2;
TBPCs{2}=[33 70.9 96.4 122.7 151];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{3}=[48.4 67.7 82.8 113 142.2];
SGs{3}=0.7;
xms{3}=[0.3476 0.3655 0 0.2431 0.0438];
massfrac3=[0.21	0	0	0	0;
3.2	1.07	0	0	0;
7.46	9.29	0	1.55	0;
6.18	10	0	8.45	0.73;
4.75	4.13	0	6.39	0.69;
4.39	3.3	0	4.82	2.09;
4.05	3.91	0	3.13	1.12;
2.75	3.26	0	0.87	0.17;
0.36	1.03	0	0.04	0;
0.05	0.04	0	0	0];
molefrac3=molefrac_compute( massfrac3 );
molefracs{3}=molefrac3;
TBPCs{3}=[22.4 54.7 78.5 117.3 152.3];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{4}=[92.8 110.3 125.5 137.7 164.7];
SGs{4}=0.734;
xms{4}=[0.4242 0.1704 0 0.3578 0.0477];
massfrac4=[0.008	0	0	0	0;
0.475	0.083	0	0	0;
2.223	0.593	0	0.968	0;
5.256	1.64	0	4.335	0.373;
8.792	3.046	0	8.38	1.106;
10.505	4.214	0	9.652	1.477;
7.896	3.995	0	6.87	1.043;
3.61	2.35	0	3.039	0.459;
1.491	1.003	0	1.3	0;
0.757	0.498	0	0	0];
molefrac4=molefrac_compute( massfrac4 );
molefracs{4}=molefrac4;
TBPCs{4}=[68.7 98.6 122.6 140.9 173.6];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{5}=[40.5 71.1 84.9 111.2 143.8];
SGs{5}=0.699;
xms{5}=[0.3524 0.3676 0 0.2407 0.0393];
massfrac5=[0.18	0	0	0	0;
3.32	0.98	0	0	0;
7.53	9.31	0	1.48	0;
6.27	10.12	0	8.32	0.36;
4.74	4.07	0	6.22	0.53;
4.39	3.26	0	4.91	2.17;
4.11	4.03	0	3.02	1.21;
2.65	3.32	0	0.91	0.17;
0.36	1.01	0	0.06	0;
0.09	0.02	0	0	0];
molefrac5=molefrac_compute( massfrac5 );
molefracs{5}=molefrac5;
TBPCs{5}=[13.4 58.5 80.7 115.5 153.7];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{6}=[86.7 110.6 128.3 146.4 166.9];
SGs{6}=0.734;
xms{6}=[0.3431 0.3441 0 0.2146 0.0982];
massfrac6=[0	0	0	0	0;
0.41	0.04	0	0	0;
2.94	1.61	0	0.28	0;
4.85	3.97	0	2.55	0.23;
5.59	4.16	0	4.45	1.05;
5.7	6.2	0	5.06	2.02;
4.61	5.42	0	5.75	4.05;
4.5	5.17	0	1.9	1.99;
3.22	6.59	0	0.69	0.63;
0.52	2.77	0	0	0];
molefrac6=molefrac_compute( massfrac6 );
molefracs{6}=molefrac6;
TBPCs{6}=[60.4 98.3 125.5 151.1 177.2];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{7}=[49.3 91.7 120.2 143.4 167.5];
SGs{7}=0.727;
xms{7}=[0.3576 0.2701 0 0.3326 0.0397];
massfrac7=[0.53	0	0	0	0;
1.7	0.56	0	0	0;
3.08	1.85	0	0.71	0;
4.29	3.05	0	4.29	0.03;
5.68	3.96	0	8.07	0.31;
6.48	5.44	0	8.65	1.9;
5.85	3.74	0	9.26	1.11;
4.39	6.68	0	2.03	0.77;
1.66	2.78	0	0.46	0.07;
0.05	0.17	0	0	0];
molefrac7=molefrac_compute( massfrac7 );
molefracs{7}=molefrac7;
TBPCs{7}=[49.3 91.7 120.2 143.4 167.9];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{8}=[61.9 90.6 103.9 122.1 146.5];
SGs{8}=0.725;
xms{8}=[0.3246 0.3020 0 0.2482 0.1253];
massfrac8=[0.16	0	0	0	0;
2.16	0.4	0	0	0;
4.95	3.2	0	0.55	0;
6.01	6.09	0	4.19	0.99;
6.28	5.59	0	7.28	3.22;
5.53	7.35	0	6.59	5.93;
4.63	4.8	0	3.78	2.7;
0	2.63	0	4.08	0;
0	0.45	0	0	0;
0	0.47	0	0	0];
molefrac8=molefrac_compute( massfrac8 );
molefracs{8}=molefrac8;
TBPCs{8}=[35.6 78.9 100.3 126.1 156.1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASTMD86Cs{9}=[90.9 108 127.3 145.1 163.7];
SGs{9}=0.737;
xms{9}=[0.6207 0 0 0.215 0.1643];
massfrac9=[0	0	0	0	0;
0	0	0	0	0;
3.21	0	0	0	0;
12.27	0	0	3.17	0.64;
12.94	0	0	5.49	2.28;
5.06	0	0	4.43	5.41;
11.84	0	0	6.15	4.68;
10.27	0	0	0	2.16;
0	0	0	0	0;
0	0	0	0	0];
molefrac9=molefrac_compute( massfrac9 );
molefracs{9}=molefrac9;
TBPCs{9}=[65.8 95.2 124.5 149.7 173.9];
save('data.mat','ASTMD86Cs','SGs','xms','molefracs','TBPCs')
end

