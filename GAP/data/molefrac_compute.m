function [ molefrac ] = molefrac_compute( massfrac )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

MW=[44.0956	1	1	1	1
58.12	58.12	56.1063	1	1
72.15	72.15	70.1329	70.13	1
86.17	86.17	84.1595	84.16	78.11
100.2	100.2	98.1861	98.18	92.14
114.2	114.2	112.2123	112.2	106.1
128.2	128.2	126.239	126.2	120.1
142.2	142.2	140.266	140.2	134.2
156.3	156.3	154.292	154.2	148.2
170.335	170.335	1	1	1];
molefrac=massfrac./MW/(sum(sum(massfrac./MW)));

end
