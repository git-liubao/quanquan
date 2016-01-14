function [   TBP5 ] = TBP_compute( molefrac )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
BP=[-42.04 0 0 0 0;
-0.5	-11.72	-6.24	0	0;
36.07	27.84	30.07	49.25	0;
68.73	61.77	63.48	80.72	80.09;
98.43	90.95	93.64	98.12	110.63;
125.68	118.1	121.26	126.9	139.53;
150.82	143.32	146.868	152.16	163.8;
174.16	166.41	170.6	176.03	184.54;
195.928	177.49	192.67	203.15	212.77;
216.323	211.2 0 0 0];
TBP=[-42.04
-11.72;
-6.24;
-0.5;
27.84;
30.07;
36.07;
49.25;
61.77;
63.48;
68.73;
80.09;
80.72;
90.95;
93.64;
98.12;
98.43;
110.63;
118.1;
121.26;
125.68;
126.9;
139.53;
143.32;
146.868;
150.82;
152.16;
163.8;
166.41;
170.6;
174.16;
176.03;
177.49;
184.54;
192.67;
195.928;
203.15;
211.2;
212.77;
216.323];
[m,n]=size(TBP);
volfrac=volfrac_compute( molefrac );
y=zeros(m,n);
for i=1:m
    for j=1:10
        for k=1:5
            if BP(j,k)<=TBP(i)
                y(i)=y(i)+volfrac(j,k);
            end
        end
    end
end
TBP5=zeros(1,5);
 
 for i=1:m
     if y(i)==0.1
         TBP5(1)=y(i);
         break
     else
         if y(i)>0.1
             TBP5(1)=(TBP(i)-TBP(i-1))/(y(i)-y(i-1))*(0.1-y(i-1))+TBP(i-1);
             break
         end
     end
 end
  for i=1:m
     if y(i)==0.3
         TBP5(2)=y(i);
         break
     else
         if y(i)>0.3
             TBP5(2)=(TBP(i)-TBP(i-1))/(y(i)-y(i-1))*(0.3-y(i-1))+TBP(i-1);
             break
         end
     end
  end
 for i=1:m
     if y(i)==0.5
         TBP5(3)=y(i);
         break
     else
         if y(i)>0.5
             TBP5(3)=(TBP(i)-TBP(i-1))/(y(i)-y(i-1))*(0.5-y(i-1))+TBP(i-1);
             break
         end
     end
 end
 for i=1:m
     if y(i)==0.7
         TBP5(4)=y(i);
         break
     else
         if y(i)>0.7
             TBP5(4)=(TBP(i)-TBP(i-1))/(y(i)-y(i-1))*(0.7-y(i-1))+TBP(i-1);
             break
         end
     end
 end  
  for i=1:m
     if y(i)==0.9
         TBP5(5)=y(i);
         break
     else
         if y(i)>0.9
             TBP5(5)=(TBP(i)-TBP(i-1))/(y(i)-y(i-1))*(0.9-y(i-1))+TBP(i-1);
             break
         end
     end
 end  

end

